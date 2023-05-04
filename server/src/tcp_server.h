#ifndef TCPSERVER_H
#define TCPSERVER_H

#include <string>
#include <netinet/in.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

class TcpServer;

typedef void(*MessageReceivedHandler)(TcpServer* listener, int socketID, std::string msg);

class TcpServer{
    public:
        TcpServer();
        TcpServer(std::string ipv4, int port);
        ~TcpServer();
        bool init_socket();
        void run();
        int server_socket;
    protected:
        bool create_socket();
        std::string listener_ipv4;
        int listener_port;

};

#endif