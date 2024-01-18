#pragma once
//Need some raspberry stff
#include <iostream>
#include <string>
#include <sstream>
#include <ctime>
#include <thread>
#include <chrono>

extern bool serverRunning;

struct Clock
{
    bool connected;
    std::string time;
    std::thread clockThread;
    Clock();
    void getTime();
    void update();
    void updateTime();
    void setClock();
    bool getConnected();
    int getHours();
    int getMinutes();
};

struct WaterThingy
{
    bool connected;
    int waterLevel;
    float frequency;
    int amount;
//Check if connected
    bool getConnected(); 
//Check water level
    int getWaterLevel();
    void setFrequency(float f);
//send if connected
//send water level

};

struct Outlet
{
    bool connected;
//
};

struct DeviceController
{
    Clock clock;
//
};


