//
// Created by vvcaw on 02.04.24.
//

#include "i-tuirate/ui.h"

UI::UI(const Logic &logic) : logic_{logic} {
    // Modify the way to render them on screen:
    auto component = Renderer(make_good_bad_button(), [this] {
        return vbox({text(current_word_), separator(), make_good_bad_button()->Render() | flex}) | flex | border;
    });

    auto screen = ScreenInteractive::Fullscreen();
    screen.Loop(component);
}

Component UI::make_good_bad_button() {
    return Container::Horizontal(
            {
                    Button("Easy", [this] { },
                           make_button_style()) | flex,
                    Button("Hard", [this] { },
                           make_button_style()) | flex
            }, &col_
    ) | flex;
}

ButtonOption UI::make_button_style() {
    auto option = ButtonOption::Animated();

    option.transform = [](const EntryState &s) {
        auto element = text(s.label);
        if (s.focused) {
            element |= bold;
        }
        return element | center | borderLight | flex;
    };

    return option;
}
