#include <string>

#include "server.hpp"
#include "devices.hpp"

bool serverRunning=false;
int ssock;
void ctrl_c(int)
{
    write(ssock,"stopping",9);
    serverRunning=false;
}

void* serv(void *s)
{
    Server &server = *((Server *)s);
    server.serverLoop();
    return NULL;
}

struct Test
{
    std::thread ttrd;
    ~Test()
    {
        ttrd.join();
    }
    void tf()
    {
        for(int i = 0 ; i<5;i++)
        {
            std::cout << i;
        }
    }
    void uwu()
    {
        std::cout << "UwU\n";
        ttrd = std::thread(&Test::tf,this);
    }
};

int main(int argc,char** argv)
{
    pthread_t servThread;
    Clock c;
    Test t;
    
    signal(SIGINT, ctrl_c);
    Server server(std::stoi("1234"));
    ssock=server.sock();
    pthread_create(&servThread,NULL,serv,&server);
    pthread_join(servThread,NULL);
    return 0;
}
