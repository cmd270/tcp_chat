#include "tcp_server.h"
#include <cstdint>
#include <iostream>
#include <netinet/in.h>
#include <sstream>
#include <string>
#include <arpa/inet.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <cstring>

const int BUFFER_SIZE = 4096;

TcpServer::TcpServer(std::string ipAddress, int port) 
: listener_ipv4(ipAddress), listener_port(port) {}

TcpServer::~TcpServer(){}

bool TcpServer::init_socket(){
    this->server_socket = socket(AF_INET,SOCK_STREAM,0);
    if(server_socket < 0){
        std::cout << "Error: can't create socket" << std::endl;
        return false;
    }
    std::cout << "Successful socket initialization." << std::endl;
    return true;
}

bool TcpServer::create_socket(){
    if(this->server_socket>0){
        sockaddr_in hint;
        hint.sin_family = AF_INET;
        hint.sin_port = htons(listener_port);
        inet_pton(AF_INET,listener_ipv4.c_str(),&hint.sin_addr);

        int bind_check = bind(server_socket,(sockaddr*)&hint,sizeof(hint));
        std::cout << "Socket was created." << std::endl;
        if(bind_check >= 0){
            std::cout << "Socket was bind." << std::endl;
            int listen_check = listen(server_socket,SOMAXCONN);
            if(listen_check < 0){
                return false;
            }
            std::cout << "Socket is listening." << std::endl;
        }
        else{
            return false;
        }
    }
    return true;
}

void TcpServer::run(){
    create_socket();
    char buf[BUFFER_SIZE];
    int max_fd = 10;
    while(true){
        if(server_socket < 0){
            break;
        }
        fd_set master;
        FD_ZERO(&master);
        FD_SET(server_socket,&master);
        while(true){
            fd_set copy = master;
            std::cout << server_socket << std::endl;
            int socket_count = select(max_fd,&copy,nullptr,nullptr,nullptr);
            for(int fd = 0; fd < max_fd; fd++){
                if(FD_ISSET(fd, &copy)){
                    if(fd == server_socket){
                        std::cout << "here3" << std::endl;
                        int client = accept(server_socket, nullptr,nullptr);
                        FD_SET(client,&master);
                        std::string welcome_msg = "Welcome to TCP Chat.";
                        send(client,welcome_msg.c_str(),welcome_msg.size()+1,0);
                        std::cout << "New user joined the chat." << std::endl;
                    }
                    else{
                        memset(buf,'\0',BUFFER_SIZE);
                        int bytes_received = recv(fd,buf,BUFFER_SIZE,0);
                        if(bytes_received <= 0){
                            FD_CLR(fd,&master);
                        }
                        else{
                            for(int fdj = 0; fdj < socket_count; fdj++){
                                if(FD_ISSET(fdj,&master)){
                                    if(fdj != server_socket){
                                        if(fdj != fd){
                                            send(fdj,buf,bytes_received,0);
                                        }
                                        else{
                                            std::string msgSent = "Message delivered.";
                                            send(fdj,msgSent.c_str(), msgSent.size()+1,0);
                                        }
                                    }
                                }
                            }
                        }
                        std::cout << std::string(buf,0,bytes_received) << std::endl;
                    }
                }
            }
        }

    }
}

