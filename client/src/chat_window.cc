#include "chat_window.h"
#include <iostream>
#include <locale>
#include <sstream>
#include <string>
#include <thread>

ChatWindow::ChatWindow()
: send_button("Send"),
  m_VBox(Gtk::Orientation::VERTICAL)
{
    set_title("TCP chat");
    set_default_size(500,500);
    m_VBox.set_margin(10);
    set_child(m_VBox);
    chat_buffer.set_editable(false);
    chat_scrolled_window.set_child(chat_buffer);
    chat_scrolled_window.set_expand();

    message_buffer.set_max_length(2000);
    m_VBox.append(chat_scrolled_window);
    m_VBox.append(m_HBox);
    m_HBox.append(message_buffer);
    m_HBox.append(send_button);
    this->signal_show().connect(sigc::mem_fun(*this,
              &ChatWindow::on_show_window));
    refTextBuffer = Gtk::TextBuffer::create();
    send_button.signal_clicked().connect(sigc::mem_fun(*this,
                &ChatWindow::on_send_button_click));
}

ChatWindow::~ChatWindow(){

}

bool ChatWindow::is_connected(){
    bool flag = false;
    client.ipv4 = this->ipv4;
    client.nickname = this->nickname;
    if(client.init_socket()){
        if(client.connect_socket()){
            flag=true;
        }
    }
    return flag;
}
void ChatWindow::on_send_button_click(){
    if(message_buffer.get_text() != ""){
        std::string msg = nickname + ": " + message_buffer.get_text();
        client.send_msg(msg);
        message_buffer.set_text("");
        refTextBuffer->set_text(refTextBuffer->get_text() + msg + "\n");
        chat_buffer.set_buffer(refTextBuffer);
    }
}

void ChatWindow::on_show_window(){
    client.recv_thread = std::thread([&] {client.thread_recv(refTextBuffer, &chat_buffer);});
    std::string msg = nickname + " joined to chat!";
    client.send_msg(msg);
}