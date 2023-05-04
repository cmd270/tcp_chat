#include <iostream>
#include <string>
#include "tcp_server.h"
#include <sys/param.h>
#include <sys/types.h>
#include <ifaddrs.h>

int main() {

    char servIP[32];
    int family = 0;
    struct ifaddrs *ifaddr;
    getifaddrs(&ifaddr);
    for(int i = 0; i < 3; ++i)
       ifaddr = ifaddr->ifa_next;
    getnameinfo(ifaddr->ifa_addr,(family == AF_INET) ? sizeof(struct sockaddr_in) : sizeof(struct sockaddr_in6), servIP, NI_MAXHOST, NULL, 0,NI_NUMERICHOST);
    // Выводим адрес и порт
    printf("SERVER IP ADDRESS: %s\n",servIP);
	
	TcpServer server(servIP, 48656);

	if (server.init_socket()) {
		server.run();
	}


}
