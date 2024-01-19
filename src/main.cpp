#include <string>

#include "server.hpp"

bool serverRunning=false;
int ssock;
void ctrl_c(int)
{
    write(ssock,"stopping",9);
    serverRunning=false;
}


int main(int argc,char** argv)
{
    if (argc < 2) {
        std::cerr << "Serial port has to be specified.\n";
        return -1;
    }
    serverRunning=true;
    signal(SIGINT, ctrl_c);
    Server server(std::stoi("3141"),argv[1]);
    //Server server(std::stoi("3141"),"/dev/ttyACM0");
    
    ssock=server.sock();
    while (serverRunning)
    {

    }
    server.serverThread.detach();
    
    return 0;
}
