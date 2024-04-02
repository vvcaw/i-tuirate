//
// Created by vvcaw on 02.04.24.
//

#ifndef I_TUIRATE_UI_H
#define I_TUIRATE_UI_H

#include <ftxui/dom/canvas.hpp>
#include <ftxui/dom/elements.hpp>
#include <ftxui/screen/screen.hpp>
#include <ftxui/screen/string.hpp>
#include <SQLiteCpp/Database.h>
#include <iostream>

void test_ui() {
    using namespace ftxui;
    vbox({
                 hbox({
                              text("one") | border,
                              text("two") | border | flex,
                              text("three") | border | flex,
                      }),

                 gauge(0.25) | color(Color::Red),
                 gauge(0.50) | color(Color::White),
                 gauge(0.75) | color(Color::Blue),
         });
    try {
        // Open a database file
        SQLite::Database db("example.db3", SQLite::OPEN_READWRITE | SQLite::OPEN_CREATE);
        SQLite::Statement create_query(db, "CREATE TABLE test");
        create_query.exec();

        // Compile a SQL query, containing one parameter (index 1)
        SQLite::Statement query(db, "SELECT * FROM test WHERE size > ?");

        // Bind the integer value 6 to the first parameter of the SQL query
        query.bind(1, 6);

        // Loop to execute the query step by step, to get rows of result
        while (query.executeStep()) {
            // Demonstrate how to get some typed column value
            int id = query.getColumn(0);
            const char *value = query.getColumn(1);
            int size = query.getColumn(2);

            std::cout << "row: " << id << ", " << value << ", " << size << std::endl;
        }
    }
    catch (std::exception &e) {
        std::cout << "exception: " << e.what() << std::endl;
    }
}

#endif //I_TUIRATE_UI_H
