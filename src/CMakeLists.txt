add_library(i-tuirate_lib ui.cpp)

target_include_directories(i-tuirate_lib PUBLIC ../include)

find_package(ftxui REQUIRED)
target_link_libraries(i-tuirate_lib PRIVATE SQLiteCpp ftxui::screen ftxui::dom ftxui::component)

# Make spdlog availabe for all apps
target_link_libraries(i-tuirate_lib PUBLIC spdlog::spdlog)