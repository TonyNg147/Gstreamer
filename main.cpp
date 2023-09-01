
#include <gst/gst.h>
#include <string>
#ifndef VIDEO_URI   // Define this Macro in CMAKE
    const std::string videoURI = "file:///home/tony/Desktop/VideoRenderQt/Resources/Video/Sample.mp4";
#else
    const std::string videoURI = VIDEO_URI;
#endif
int main(int argc, char** argv){

    GMainLoop* loop = nullptr;              // Create the loop for playing video

    GstElement* pipeline = nullptr;         // Pipe acts as if playbin (source, sink)

    gst_init(&argc, &argv);                 // Init the environment
 
    pipeline = gst_element_factory_make("playbin","pipeline");   // Create playbin from factory

    g_object_set(pipeline, "uri", videoURI.c_str(), NULL);       // Set URI for playbin

    gst_element_set_state(pipeline, GST_STATE_PLAYING);          // Switch to playing state

    loop = g_main_loop_new(NULL,false);

    g_main_loop_run(loop);

};