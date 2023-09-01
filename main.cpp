
#include <gst/gst.h>

int main(int argc, char** argv){
    GMainLoop* loop;

    GstElement* pl;

    gst_init(&argc, &argv);
    pl = gst_element_factory_make("playbin", "bin");

    g_object_set(pl, "uri", "file:///home/tony/Desktop/VideoRenderQt/Resources/Video/Sample.mp4", NULL);

    gst_element_set_state(pl, GST_STATE_PLAYING);

    loop = g_main_loop_new(NULL, false);

    g_main_loop_run(loop);
};