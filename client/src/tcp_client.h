#ifndef TCPCLIENT_H
#define TCPCLIENT_H

#include <thread>
#include <string>
#include <netinet/in.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <gtkmm.h>

class TcpClient{
    public:
        TcpClient();
        ~TcpClient();
        bool init_socket();
        bool connect_socket();
        void send_msg(std::string txt);
        std::thread recv_thread;
        void thread_recv(Glib::RefPtr<Gtk::TextBuffer> textbuffer, Gtk::TextView *chat_buffer);
        std::string nickname;
        std::string ipv4;
        int client_socket;
        bool join_chat;
    protected:
        int create_socket();
        int server_port = 48656;
        sockaddr_in hint;
        int server_socket;
        bool recv_thread_running = false;
};

#endif