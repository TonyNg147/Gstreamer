#include "Controller.h"
#include <string>
#ifndef VIDEO_URI   // Define this Macro in CMAKE
    const std::string videoURI = "file:///home/tony/Desktop/VideoRenderQt/Resources/Video/Sample.mp4";
#else
    const std::string videoURI = VIDEO_URI;
#endif


Controller::Controller(){
    pipeline = gst_element_factory_make("playbin", "bin");
    if (pipeline == nullptr){
        fprintf(stderr, "Cannot create pipeline\n");
        exit(1);
    }
    bus = gst_element_get_bus(pipeline);
    if (bus == nullptr){
        fprintf(stderr, "Cannot create bus\n");
        exit(1);
    }

    gst_bus_add_signal_watch(bus);


    g_signal_connect(bus, "message", G_CALLBACK(handleBusMessage), this);

    g_object_set(pipeline, "uri",videoURI.c_str(), nullptr );

}


void Controller::play(){
    gst_element_set_state(pipeline, GST_STATE_PLAYING);
}

Controller::~Controller(){
    releasePipeline();
}

void handleBusMessage(GstBus* bus, GstMessage* msg, Controller* controller){
    switch(GST_MESSAGE_TYPE(msg)){
        case GST_MESSAGE_ERROR:{
            GError* error;
            gchar*  errorMsg;
            gst_message_parse_error(msg, &error, &errorMsg);
            printf("Error is: %s\n", error->message);
            g_error_free(error);
            g_free(errorMsg);
            // controller->releasePipeline();
            controller->cbTerminate();
            break;
        }
    };
}

void Controller::releasePipeline(){
    gst_element_set_state(pipeline, GST_STATE_NULL);
    gst_object_unref(pipeline);
}
