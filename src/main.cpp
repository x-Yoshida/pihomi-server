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

struct Test
{
    std::thread ttrd;
    ~Test()
    {
        ttrd.join();
    }
    void tf()
    {
        std::cout << "UwU\n";
        for(int i = 0 ; i<5;i++)
        {
            std::cout << i <<std::endl;
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
    serverRunning=true;
    //Clock c;
    //Test t;
    signal(SIGINT, ctrl_c);
    Server server(std::stoi("1234"));
    ssock=server.sock();
    while (serverRunning)
    {
    }
    
    return 0;
}
