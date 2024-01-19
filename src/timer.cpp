#include "timer.hpp"

Timer::Timer(int sec)
{
    startPoint = std::chrono::system_clock::now();
    timerThread = std::thread(&Timer::updateTimer,this);
}

Timer::~Timer()
{
    timerThread.join();
}

void Timer::updateTimer()
{
    while(running)
    {
        //if(!paused)///Tu powinien być mutex prawdopodnie
        //{
        //    
        //}
    }
}