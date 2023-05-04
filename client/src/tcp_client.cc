#include "tcp_client.h"
#include <sys/socket.h>
#include <iostream>
#include <strings.h>
#include <cstring>
#include <arpa/inet.h>
#include <sys/types.h>

TcpClient::TcpClient(){
    recv_thread_running = false;
}

TcpClient::~TcpClient(){
    shutdown(this->client_socket,SHUT_RDWR);
}

bool TcpClient::init_socket(){
    this->client_socket = socket(AF_INET,SOCK_STREAM,0);
    if(client_socket <0){
        std::cout << "Error: Can't init socket" << std::endl;
        return false;
    }
    std::cout << "Succesfully init socket" << std::endl;
    hint.sin_family = AF_INET;
    hint.sin_port = htons(server_port);
    inet_pton(AF_INET,ipv4.c_str(), &hint.sin_addr);
    return true;
}

bool TcpClient::connect_socket(){
    int connect_result = connect(client_socket,(struct sockaddr*)&hint,sizeof(hint));
    if(connect_result<0){
        std::cout << "Error: Can't connect to server." << std::endl;
        return false;
    }
    std::cout << "Succesfully connect socket" << std::endl;
    return true;
   
}

void TcpClient::thread_recv(Glib::RefPtr<Gtk::TextBuffer> textbuffer, Gtk::TextView *chat_buffer){
    recv_thread_running = true;
    while(recv_thread_running){
        char buf[4096];
        memset(buf,'\0',4096);
        int bytes_received = recv(client_socket,buf,4096,0);
        if(bytes_received > 0){
            std::string temp = std::string(buf, 0, bytes_received);
            textbuffer->set_text(textbuffer->get_text()+temp+"\n");
            chat_buffer->set_buffer(textbuffer);
        }
    }
}

void TcpClient::send_msg(std::string txt){
    if(!txt.empty() && client_socket > 0){
        send(client_socket, txt.c_str(), txt.size()+1,0);
        std::cout << txt << "\n message was sent" << std::endl;
    }
}