//
// Created by vvcaw on 02.04.24.
//

#ifndef I_TUIRATE_UI_H
#define I_TUIRATE_UI_H

#include "i-tuirate/logic.h"

#include <iostream>
#include <ftxui/dom/canvas.hpp>
#include <ftxui/dom/elements.hpp>
#include <ftxui/component/loop.hpp>
#include "ftxui/component/captured_mouse.hpp"
#include "ftxui/component/component.hpp"
#include "ftxui/component/component_base.hpp"
#include "ftxui/component/screen_interactive.hpp"
#include "ftxui/dom/elements.hpp"

using namespace ftxui;

class UI {
public:
    explicit UI(const Logic &logic);

    UI(const UI &other) = delete;

    UI(const UI &&other) = delete;

    UI &operator=(const UI &other) = delete;

    UI &operator=(const UI &&other) = delete;

    ~UI() = default;

private:
    Logic logic_;

    std::string current_word_{"Loading..."};

    // Currently selected column in the buttons
    int col_{0};

    [[nodiscard]] Component make_good_bad_button();

    [[nodiscard]] static ButtonOption make_button_style();
};

#endif //I_TUIRATE_UI_H
