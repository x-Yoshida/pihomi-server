cmake_minimum_required(VERSION 3.20)
project(pihomi)
set(CMAKE_CXX_STANDARD 20)

# find_package(CURL REQUIRED)
# Find the Boost package
find_package(Boost COMPONENTS system REQUIRED)

add_executable(pihomi.bin src/server.cpp src/main.cpp src/devices.cpp src/NTPClient.cpp)

# Link against the Boost libraries
target_link_libraries(pihomi.bin PRIVATE Boost::system)

# Include Boost headers
target_include_directories(pihomi.bin PRIVATE ${Boost_INCLUDE_DIRS})

#target_link_libraries(pihomi.bin PRIVATE ${CURL_LIBRARIES})
#target_include_directories(pihomi.bin PRIVATE ${CURL_INCLUDE_DIRS})
