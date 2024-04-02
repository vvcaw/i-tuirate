cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(i-tuirate)

# The cmake thing is prebundled with packages to find, so you HAVE to use the one from the nix store.....
find_package(SQLiteCpp REQUIRED)
find_package(spdlog REQUIRED)

add_subdirectory(src)

add_subdirectory(app)