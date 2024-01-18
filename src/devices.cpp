#include "devices.hpp"

Clock::Clock()
{
    connected=true;
    clockThread = std::thread(&Clock::update,this);
    
}

void Clock::getTime()
{
    time_t utime = std::time(NULL);
    char buf[40];
    //std::strftime(buf,sizeof(buf),"%H:%M",std::localtime(&utime)); Imagine używać normalengo zegara
    std::strftime(buf,sizeof(buf),"%I:%M%p",std::localtime(&utime));
    time = buf;

}

void Clock::update()
{
    while(serverRunning)
    {
        if(connected)
        {
            getTime();
            //updateTime();
            std::this_thread::sleep_for(std::chrono::milliseconds(1000));   
        }

    }

}

void Clock::updateTime()
{
    std::cout << time << std::endl;
}

bool Clock::getConnected()
{
    return 1;
}

int Clock::getHours()
{
    std::string hour = time.substr(0,2);
    return std::stoi(hour);
}

int Clock::getMinutes()
{
    std::string minutes = time.substr(3,2);
    return std::stoi(minutes);
}


bool WaterThingy::getConnected()
{
    return 1;
}


int WaterThingy::getWaterLevel()
{
    //Do communication
    return 4;
}