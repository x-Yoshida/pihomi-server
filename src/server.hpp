#pragma once
#include <iostream>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <errno.h>
#include <error.h>
#include <netdb.h>
#include <sys/epoll.h>
#include <sys/time.h>
#include <unordered_set>
#include <list>
#include <signal.h>
#include <thread>
#include <vector>

#include "client.hpp"
#include "controller.hpp"

extern bool serverRunning;
extern void ctrl_c(int);

void setReuseAddr(int sock);

struct Server 
{
    int _sock;
    int _epollFd;
    std::array<bool,4> socks;
    phm::controller controller;
    std::thread serverThread;
    std::vector<Client*> clients;
    public:
        Server(uint32_t port,std::string serial);
        ~Server();
        int sock() const;
        void handleEvent(uint32_t events);
        void serverLoop();
        void inter();
        
};


