
#include <gst/gst.h>
#include <string>
#include "Controller/Controller.h"
GMainLoop* loop = nullptr;
void terminate(){
    
    g_main_loop_quit(loop); 
}
int main(int argc, char** argv){

    gst_init(&argc, &argv);
    loop = g_main_loop_new(nullptr,false);
    Controller controller;
    controller.registerTermination(&terminate);
    controller.play();
    g_main_loop_run(loop);

    g_main_loop_unref(loop);

};