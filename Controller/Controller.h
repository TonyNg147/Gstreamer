#ifndef CONTROLLER_H
#define CONTROLLER_H
#include <gst/gst.h>
#include <functional>
class Controller;
static void handleBusMessage(GstBus* bus, GstMessage* msg, Controller*);
class Controller{
    friend void handleBusMessage(GstBus* bus, GstMessage* msg, Controller*);
    public:
        Controller();
        void play();
        void registerTermination(std::function<void()> cb){
            if (cb){
                cbTerminate = cb;
            }
        }
        ~Controller();
    private:

        void releasePipeline();
    private:
        GstElement* pipeline = nullptr;
        GstBus*     bus      = nullptr;
        bool        mIsLive;
        std::function<void()>  cbTerminate;
};
#endif 