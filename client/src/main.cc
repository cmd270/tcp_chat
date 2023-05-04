// File: main.cc

#include "start_window.h"
#include "chat_window.h"
#include "tcp_client.h"
#include <gtkmm/application.h>

int main (int argc, char *argv[])
{
  auto app = Gtk::Application::create("org.gtkmm.example");
  return app->make_window_and_run<StartWindow>(argc,argv);
}
