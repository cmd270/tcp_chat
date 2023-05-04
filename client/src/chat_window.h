#ifndef GTKMM_CHATWINDOW_H
#define GTKMM_CHATWINDOW_H

#include <gtkmm.h>
#include "tcp_client.h"

class ChatWindow  : public Gtk::Window
{
public:
  ChatWindow();
  virtual ~ChatWindow();
  Glib::ustring nickname, ipv4;
  bool is_connected();
  TcpClient client;

protected:
  //Функции обработчики:
  void on_send_button_click();
  void reveice_msg();
  void on_show_window();
  //Виджеты:
  Gtk::Box m_VBox;
  Gtk::Box m_HBox;
  Gtk::Entry message_buffer;
  Gtk::ScrolledWindow chat_scrolled_window;
  Gtk::TextView chat_buffer;
  Gtk::Button send_button;
  Glib::RefPtr<Gtk::AlertDialog> error_alert;
  Glib::RefPtr<Gtk::TextBuffer> refTextBuffer;
};
#endif