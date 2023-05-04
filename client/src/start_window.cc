#include "start_window.h"
#include <iostream>

StartWindow::StartWindow()
: connect_button("Connect"),
  m_VBox(Gtk::Orientation::VERTICAL),
  ip_label("Enter a IP address:"),
  nickname_label("Enter your nickname:")
{
  set_size_request(200,100);
  set_title("Tcp Chat. Start window");
  set_child(m_VBox);
  ip_entry.set_max_length(50);
  nickname_entry.set_max_length(30);
  // привязка кнопки connect_button к событию  on_connect_button_clicked() 
  m_VBox.append(ip_label);
  m_VBox.append(ip_entry);
  m_VBox.append(nickname_label);
  m_VBox.append(nickname_entry);
  m_VBox.append(connect_button);
  connect_button.signal_clicked().connect(sigc::mem_fun(*this,
              &StartWindow::on_connect_button_clicked));
}

StartWindow::~StartWindow()
{
}

void StartWindow::on_connect_button_clicked()
{
  if (!error_alert)
    error_alert = Gtk::AlertDialog::create();
  else
  {
    error_alert->set_buttons({});
    error_alert->set_default_button(-1);
    error_alert->set_cancel_button(-1);
  }
  if(ip_entry.get_text() == "" || nickname_entry.get_text() == ""){
    error_alert->set_message("Error alert");
    error_alert->set_detail("Nickname and IP address cannot be empty.");
    error_alert->show(*this);
  }
  else{
    std::cout << ip_entry.get_text() << std::endl;
    std::cout << nickname_entry.get_text() << std::endl;
    chatwindow.ipv4 = ip_entry.get_text();
    chatwindow.nickname = nickname_entry.get_text();
    if(chatwindow.is_connected()){
      chatwindow.show();
    }
    else{
      error_alert->set_message("Error alert");
      error_alert->set_detail("Try another ip address");
      error_alert->show(*this);
    }
  }
}
