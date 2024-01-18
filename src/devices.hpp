#pragma once
//Need some raspberry stff
#include <iostream>
#include <string>
#include <sstream>
#include "NTPClient.h"

struct Clock
{
    bool connected;
    std::string time;
    Clock();
    void getTime();
    void setClock();
    bool connected();
    int getHours();
    int getMinutes();
};

struct WaterThingy
{
    bool connected;
    int waterLevel;
//Check if connected
    bool connected(); 
//Check water level
    int getWaterLevel();
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
//
};


