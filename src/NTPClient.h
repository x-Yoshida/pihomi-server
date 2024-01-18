#ifndef NTPClIENT_H
#define NTPCLIENT_H

#include <string>
#include <iostream>
//https://github.com/ethanlim/NetworkTimeProtocol/tree/master
//Components of the Boost Library
#include <boost/array.hpp>
#include <boost/asio.hpp>


namespace MultipleKinectsPlatformServer{
	
	/**
	*  A Network Time Protocol Client that queries the DateTime from the Time Server located at hostname
	*/
	class NTPClient{
		private:
			std::string _host_name;
			unsigned short _port;
		public:
			NTPClient(std::string i_hostname);
			long RequestDatetime_UNIX();
	};

}

#endif