#ifndef GTKMM_STARTWINDOW_H
#define GTKMM_STARTWINDOW_H

#include <gtkmm.h>
#include "chat_window.h"

class StartWindow  : public Gtk::Window
{
public:
  StartWindow();
  virtual ~StartWindow();

protected:
  //Обработчики сигналов:
  void on_connect_button_clicked();
  //Виджеты:
  Gtk::Button connect_button;
  Gtk::Box m_VBox;
  Gtk::Entry ip_entry, nickname_entry;
  Gtk::Label ip_label, nickname_label;
  Glib::RefPtr<Gtk::AlertDialog> error_alert;
  ChatWindow chatwindow;
};
#endif