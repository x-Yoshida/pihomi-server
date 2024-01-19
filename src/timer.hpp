#pragma once

#include <iostream>
#include <chrono>
#include <thread>

struct Timer
{
    bool running;
    std::chrono::milliseconds timepassed;
    std::thread timerThread;
    std::chrono::time_point<std::chrono::system_clock> startPoint;
    std::chrono::time_point<std::chrono::system_clock> endPoint;
    Timer(int sec);
    ~Timer();
    void updateTimer();
};



