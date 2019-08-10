// License: Apache 2.0. See LICENSE file in root directory.
// Copyright(c) 2015 Intel Corporation. All Rights Reserved.

///////////////////////////////////////////////////////
// librealsense tutorial #3 - Point cloud generation //
///////////////////////////////////////////////////////

// First include the librealsense C++ header file
#include <librealsense/rs.hpp>
#include <cstdio>

#include<iostream>
#include <thread>

// Also include GLFW to allow for graphical display
#define GLFW_INCLUDE_GLU
#include <GLFW/glfw3.h>


#include <sstream>
#include <iomanip>
#include <algorithm>
#include <map>
#include <memory>

rs::context ctx;
rs::device * dev;

#include <time.h>
#include <math.h>


#include <vector>
// Warn about use of deprecated functions.
#define GNUPLOT_DEPRECATE_WARN
#include "gnuplot-iostream.h"
Gnuplot gp;


#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#define PORT 8888
#include <arpa/inet.h>



#define WIDTH 640
#define HEIGHT 480
 
double yaw, pitch, lastX, lastY; int ml;

bool align_depth_to_color = false;
bool align_color_to_depth = false;
bool color_rectification_enabled = false;

static void on_mouse_button(GLFWwindow * win, int button, int action, int mods)
{
    if(button == GLFW_MOUSE_BUTTON_LEFT) ml = action == GLFW_PRESS;
}
static double clamp(double val, double lo, double hi) { return val < lo ? lo : val > hi ? hi : val; }
static void on_cursor_pos(GLFWwindow * win, double x, double y)
{
    if(ml)
    {
        yaw = clamp(yaw - (x - lastX), -120, 120);
        pitch = clamp(pitch + (y - lastY), -80, 80);
    }
    lastX = x;
    lastY = y;
}


void graficar(double elementos[]){
     std::vector<std::pair<double, double> > datos;
     for(int x=0; x<101; x+=1){
	      datos.push_back(std::make_pair((double)x, elementos[x]));
     }
     gp << "set xrange [0:100]\nset yrange [0:1000]\n";
     gp << "plot '-' with lines title 'histograma'\n";
     gp.send1d(datos);
}




int main(int argc, char *argv[]) try
{
    // Turn on logging. We can separately enable logging to console or to file, and use different severity filters for each.
    rs::log_to_console(rs::log_severity::warn);
    //rs::log_to_file(rs::log_severity::debug, "librealsense.log");

    // Create a context object. This object owns the handles to all connected realsense devices.
    //rs::context ctx;
    printf("There are %d connected RealSense devices.\n", ctx.get_device_count());
    if(ctx.get_device_count() == 0) return EXIT_FAILURE;

    // This tutorial will access only a single device, but it is trivial to extend to multiple devices
    //rs::device * dev = ctx.get_device(0);
    dev = ctx.get_device(0);
    printf("\nUsing device 0, an %s\n", dev->get_name());
    printf("    Serial number: %s\n", dev->get_serial());
    printf("    Firmware version: %s\n", dev->get_firmware_version());

    // Configure depth and color to run with the device's preferred settings
    dev->enable_stream(rs::stream::depth, rs::preset::best_quality);
    dev->enable_stream(rs::stream::color, rs::preset::best_quality);
    dev->start();

    // Open a GLFW window to display our output
    glfwInit();
    GLFWwindow * win = glfwCreateWindow(640, 480, "librealsense tutorial #3", nullptr, nullptr);
    //GLFWwindow * win = glfwCreateWindow(1280, 960, "librealsense tutorial #3", nullptr, nullptr);
    glfwSetCursorPosCallback(win, on_cursor_pos);
    glfwSetMouseButtonCallback(win, on_mouse_button);
    //glfwMakeContextCurrent(win);

    printf("Inicia......... \n");
    //rs::intrinsics depth_intrin = dev->get_stream_intrinsics(rs::stream::depth);


    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    char str[100];
    char des[100] = "/home/odroid/Documents/";

    printf("now: %d-%d-%d %d:%d:%d\n", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec);

    if(tm.tm_mon + 1 < 10){
          sprintf(str, "Log-%d%d%d-%d0%d%d.txt",tm.tm_hour, tm.tm_min, tm.tm_sec, tm.tm_mday, tm.tm_mon + 1, tm.tm_year + 1900 );
    }
    else sprintf(str, "Log-%d%d%d-%d%d%d.txt",tm.tm_hour, tm.tm_min, tm.tm_sec, tm.tm_mday, tm.tm_mon + 1, tm.tm_year + 1900 );

    strcat(des,str);
    printf("Creating a Log File: %s\n",des);

    FILE *f = fopen(des, "w");
    if (f == NULL)
    {
        printf("Error opening file!\n");
        exit(1);
    }


    struct sockaddr_in address;
    int sock = 0, valread;
    struct sockaddr_in serv_addr;
    char hello[1024] = "Loiter", channel[1024] = "Channel";
    char compare[1024] = "LOITER";
    char buffer[1024] = {0};
    int Channel = 0;

    struct timespec tstart={0,0}, tend={0,0};
    double histograma[101];
    double Sumatoria = 0;
    float image[480][360];
    int acumulativo = 0, acumulativoD = 0, acumulativoI = 0, countO = 0, countOFlag = 0;
    float distancia_menor = 100;
    int pixelx, pixely, npixeles=0, promedio=0, iterador = 0, umbral= std::stoi(argv[1]), ele = std::stoi(argv[2]), debug = std::stoi(argv[3]);
    std::cout << "Umbral: " << umbral<< "Elementos: " << ele<< std::endl<<std::endl;

    int exposure = !dev->get_option(rs::option::r200_lr_auto_exposure_enabled);
    std::cout << "Setting auto exposure to " << exposure << std::endl<<std::endl;
    dev->set_option(rs::option::r200_lr_auto_exposure_enabled, exposure);

    int picohistograma = 0;


    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0){
	     printf("\n Socket creation error \n");
	     return -1;
    }

    memset(&serv_addr, '0', sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);

    if(inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr)<=0){
	    printf("\nInvalid address/ Address not supported \n");
	    return -1;
    }

    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0){
	    printf("\nConnection Failed \n");
	    return -1;
    }




    glfwSetWindowUserPointer(win, &dev);
    glfwSetKeyCallback(win, [](GLFWwindow * win, int key, int scancode, int action, int mods){
	  //auto dev = reinterpret_cast<rs::device *>(glfwGetWindowUserPointer(win));
	  if (action != GLFW_RELEASE) switch (key)
	  {
	  	//case GLFW_KEY_R: color_rectification_enabled = !color_rectification_enabled; break;
	 	//case GLFW_KEY_C: align_color_to_depth = !align_color_to_depth; break;
		//case GLFW_KEY_D: align_depth_to_color = !align_depth_to_color; break;
		case GLFW_KEY_E:
			   if (dev->supports_option(rs::option::r200_emitter_enabled))
			   {
			        int value = !dev->get_option(rs::option::r200_emitter_enabled);
			        std::cout << "Setting emitter to " << value << std::endl<<std::endl;
				dev->set_option(rs::option::r200_emitter_enabled, value);
			    }
			    break;
		 case GLFW_KEY_A:
		            if (dev->supports_option(rs::option::r200_lr_auto_exposure_enabled))
		            {
				 int value = !dev->get_option(rs::option::r200_lr_auto_exposure_enabled);
				 std::cout << "Setting auto exposure to " << value << std::endl<<std::endl;
				 dev->set_option(rs::option::r200_lr_auto_exposure_enabled, value);
		             }
			     break;
	   }
     });
     glfwMakeContextCurrent(win);


    while(!glfwWindowShouldClose(win))
    {

     	clock_gettime(CLOCK_MONOTONIC, &tstart);

	    for(int i=0; i<101; i++) histograma[i] = 0;

        // Wait for new frame data
        glfwPollEvents();
        dev->wait_for_frames();
	    npixeles = 0;
	    picohistograma = 0;

        // Retrieve our images
        const uint16_t * depth_image = (const uint16_t *)dev->get_frame_data(rs::stream::depth);
        const uint8_t * color_image = (const uint8_t *)dev->get_frame_data(rs::stream::color);

        // Retrieve camera parameters for mapping between depth and color
        rs::intrinsics depth_intrin = dev->get_stream_intrinsics(rs::stream::depth);
        rs::extrinsics depth_to_color = dev->get_extrinsics(rs::stream::depth, rs::stream::color);
        rs::intrinsics color_intrin = dev->get_stream_intrinsics(rs::stream::color);
        float scale = dev->get_depth_scale();

        // Set up a perspective transform in a space that we can rotate by clicking and dragging the mouse
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        gluPerspective(60, (float)1280/960, 0.01f, 20.0f);
        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        gluLookAt(0,0,0, 0,0,1, 0,-1,0);
        glTranslatef(0,0,+0.5f);
        glRotated(pitch, 1, 0, 0);
        glRotated(yaw, 0, 1, 0);
        glTranslatef(0,0,-0.5f);

        // We will render our depth data as a set of points in 3D space
        glPointSize(2);
        glEnable(GL_DEPTH_TEST);
        glBegin(GL_POINTS);

	    //float image[depth_intrin.width][depth_intrin.height];

        for(int dy=0; dy<depth_intrin.height; ++dy)
        {
            for(int dx=0; dx<depth_intrin.width; ++dx)
            {
                // Retrieve the 16-bit depth value and map it into a depth in meters
                uint16_t depth_value = depth_image[dy * depth_intrin.width + dx];
                float depth_in_meters = depth_value * scale;

	            //	if((depth_intrin.height/2 == dy)&& (depth_intrin.width/2 == dx))
	            //  printf("Distancia Media en Pixel[%d][%d] = %f \t",depth_intrin.width/2,depth_intrin.height/2, depth_in_meters );
		        image[dx][dy] = depth_in_meters;
                // Skip over pixels with a depth value of zero, which is used to indicate no data
                if(depth_value == 0) continue;

                // Map from pixel coordinates in the depth image to pixel coordinates in the color image
                rs::float2 depth_pixel = {(float)dx, (float)dy};
                rs::float3 depth_point = depth_intrin.deproject(depth_pixel, depth_in_meters);
                rs::float3 color_point = depth_to_color.transform(depth_point);
                rs::float2 color_pixel = color_intrin.project(color_point);

		        // Use the color from the nearest color pixel, or pure white if this point falls outside the color image
                const int cx = (int)std::round(color_pixel.x), cy = (int)std::round(color_pixel.y);
                if(cx < 0 || cy < 0 || cx >= color_intrin.width || cy >= color_intrin.height)
                {
                    glColor3ub(255, 255, 255);
                }
                else
                {
		            //if ((depth_in_meters > 0.40)&&(depth_in_meters < 1.0))
		            if (depth_in_meters < 1.0)
		    	        glColor3ub(255, 0, 0);
		            else
			            glColor3ubv(color_image + (cy * color_intrin.width + cx) * 3);
                }

                // Emit a vertex at the 3D location of this depth pixel
                glVertex3f(depth_point.x, depth_point.y, depth_point.z);
            }
        }
        glEnd();
        glfwSwapBuffers(win);


	    for(int dy=0; dy<depth_intrin.height; ++dy)
	    {
	       for(int dx=0; dx<depth_intrin.width; ++dx)
		   {
		        if ((image[dx][dy] < 1.5)&&(image[dx][dy]>0.5)){
			         ++histograma[(int)((image[dx][dy]*100) -50)];
			         if(image[dx][dy] < 1.0)
			     	   npixeles++;
		        }
		    }
	    }

	    for(int j=0; j<101; ++j)
	    {
		    fprintf(f, "%.0f\t", histograma[j]);
		    if(histograma[j] > histograma[picohistograma]){
			    picohistograma = j;
		    }
	    }
	    fprintf(f,"\n");

	    acumulativoD = 0;
	    acumulativoI = 0;

        if( histograma[picohistograma] > 250 ){
		    for(int j = 0; picohistograma - j >= 0 ; ++j){
			    if (histograma[picohistograma - j] >150)
				    acumulativoI++;
			    else break;
		    }
		    for(int j = 0; picohistograma + j <= 100 ; ++j){
			    if (histograma[picohistograma + j] >150)
				    acumulativoD++;
			    else break;
		    }
	    }

	    //printf("Distancia Menor en Pixel[%d][%d] = %.3f   npixeles= %d \t", pixelx, pixely, distancia_menor, npixeles );
	    //Sumatoria+=npixeles; promedio = Sumatoria / ++iterador;
	    //printf("Promedio =  %d  \t", promedio);
	    if(acumulativoD + acumulativoI >= 4 )
	    {
            	printf("Objetos: 1\t");
            	if(countOFlag == 0)
		{
			send(sock , channel , strlen(channel) , 0 );
                	for(int i=0; i< 1024;i++) buffer[i]='\0';
                	valread = recv( sock , buffer, 1024, 0 );
                	Channel = atoi(buffer);
			if(Channel > 1500)
		 	{
				++countO;
				++countOFlag;
				send(sock , hello , strlen(hello) , 0 );
                                for(int i=0; i< 1024;i++) buffer[i]='\0';
                                valread = recv( sock , buffer, 1024, 0 );

				if(strcmp(buffer,compare)!=0)
				{
					send(sock , hello , strlen(hello) , 0 );
					for(int i=0; i< 1024;i++) buffer[i]='\0';
					valread = recv( sock , buffer, 1024, 0 );
					while(strcmp(buffer,compare)!= 0)
					{
						send(sock , hello , strlen(hello) , 0 );
						for(int i=0; i< 1024;i++) buffer[i]='\0';
						valread = recv( sock , buffer, 1024, 0 );
					}
				}
			fprintf(f, "Objetos: 1 Picohistograma= %d AcumuladorI= %d AcumuladorD= %d CountObject= %d Canal8= %d Mode= %s\r",picohistograma,acumulativoI,acumulativoD, countO, Channel, buffer);
			}
		}
            }
	    else{
	    	printf("Objetos: 0\t");
            	countOFlag = 0;
        //		send(sock , hello , strlen(hello) , 0 );
	    }


	    if(debug == 1){
		graficar(histograma);
	    }

	    clock_gettime(CLOCK_MONOTONIC, &tend);
  	    static double fps = 0;
	    fps = ((double)tend.tv_sec + 1.0e-9*tend.tv_nsec) - ((double)tstart.tv_sec + 1.0e-9*tstart.tv_nsec);
	    fps = ((double)1.0 / fps);
	    printf("fps: %lf\t",fps);
	    printf("Picohistograma= %d AcumuladorI= %d AcumuladorD= %d CountObject= %d Canal8= %d Mode= %s\r",picohistograma,acumulativoI,acumulativoD, countO, Channel, buffer);
    }
    return EXIT_SUCCESS;
    fclose(f);
}
catch(const rs::error & e)
{
    // Method calls against librealsense objects may throw exceptions of type rs::error
    printf("rs::error was thrown when calling %s(%s):\n", e.get_failed_function().c_str(), e.get_failed_args().c_str());
    printf("    %s\n", e.what());
    return EXIT_FAILURE;
}
