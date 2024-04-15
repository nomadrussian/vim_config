"============"
" 15/04/2024 "
"=================="
" FUNCTION SECTION "
"=================="

let s:unicode_encodings_list = ["utf-8", "usc-2", "usc-2le", "utf-16", "utf-16le", "usc-4", "usc-4le"]
let s:list_chars_state = 0
let s:syntax_state = 1
let s:encoding_state = 0
let s:line_numbers_display_state = 2

function ToggleListCharsState()
    if index(s:unicode_encodings_list, &enc) >= 0
        if s:list_chars_state == 1
            set listchars=precedes:‹,extends:›
            let s:list_chars_state = 0
            echo "disabled list chars"
        else
            set listchars=eol:§,tab:»·,trail:¯,precedes:‹,extends:›
            let s:list_chars_state = 1
            echo "enabled list chars"
        endif
    else
        if s:list_chars_state == 1
            set listchars=precedes:<,extends:>
            let s:list_chars_state = 0
            echo "disabled list chars"
        else
            set listchars=eol:$,tab:>-,trail:?,precedes:<,extends:>
            let s:list_chars_state = 1
            echo "enabled list chars"
        endif
    endif
endfunction

function ToggleSyntax()
    if s:syntax_state == 1
        syntax off
        let s:syntax_state = 0
        echo "syntax off"
    else
        syntax on
        let s:syntax_state = 1
        echo "syntax on"
    endif
endfunction

function ToggleLineNumbersDisplayState(direction)
    " Adjust state value:
    if a:direction == "forward"
        let s:line_numbers_display_state -= 1
        if s:line_numbers_display_state < 0
            let s:line_numbers_display_state = 2
        endif
    elseif a:direction == "backwards"
        let s:line_numbers_display_state += 1
        if s:line_numbers_display_state > 2
            let s:line_numbers_display_state = 0
        endif
    else
        echo "ERROR: unknown value " s:line_numbers_display_state
    endif
    " Set state:
    if s:line_numbers_display_state == 0
        set nonumber norelativenumber
    elseif s:line_numbers_display_state == 1
        set number norelativenumber
    else
        set number relativenumber
    endif
endfunction

function ProceedEncodingCompatibilityWarning()
    if &fileencoding == &encoding
        highlight User2 ctermfg=95 ctermbg=0
        redraw
        return 1
    else
        highlight User2 ctermfg=13 ctermbg=88
        redraw
        return 0
    endif
    return ""
endfunction

