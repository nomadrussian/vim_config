"============"
" 15/04/2024 "
"================="
" VIM_CONFIG v0.1 "
"================="

Installing:
1. Put "vim_config" directory into /home/*username*/
2. Write this line in .vimrc:
    source vim_config/init.vim

Useful mappings:

    F2          - previous buffer;
    F3          - next buffer;
    Shift+F2    - display the buffer list;
    Shift+F3    - open a buffer in normal mode;
                  specify the number before typing in the command;

    F4          - previous tab;
    F5          - next tab;
    Shift+F4    - move current tab one position left;
    Shift+F5    - move current tab one position right;
    Ctrl+F5     - move current window to a new tab;
    Alt+F5      - save ALL unsaved buffers in Vim and close current tab

    Shift+F6    - in visual mode fold selected lines;
    F6          - toggle folded lines;
    Ctrl+F6     - remove the fold under the cursor;

    F8          - stop highlighting the last search;
    Shift+F8    - toggle ignorecase (if set, then smartcase is on);
    Ctrl+F8     - toggle search highlighting;

    F10         - toggle wrapping long lines;
    Shift+F10   - toggle expandtab;

    F12         - toggle invisible characters display;
    Shift+F12   - toggle syntax highlighting;

    Shift+Up     - move (selected) line(s) up
                   in visual also K;
    Shift+Down   - move (selected) line(s) down;
                   in visual also J;
    Shift+Right  - move (selected) line(s) right
                   = increase indentation (like adding tab at the beginning)
                   in visual also L;
    Shift+Left   - move (selected) line(s) left
                   = decrease indentation (like removing tab at the beginning)
                   in visual also H;

    Ctrl+Up/k    - move cursor onto the window above;
    Ctrl+Down/j  - move cursor onto the window below;
    Ctrl+Right/l - move cursor onto the window on the right;
    Ctrl+Left/h  - move cursor onto the window on the left;

    Alt+Up       - increase current window's height;
    Alt+Down     - decrease current window's height;
    Alt+Right    - increase current window's width;
    Alt+Left     - decrease current window's width;

    >            - horizontal scroll 2 columns right (if wrap is off)
    <            - horizontal scroll 2 columns left (if wrap is off)

See the source code for more comprehension.
Set Unicode encoding by "set enc=uft-8" to see all the characters there.

