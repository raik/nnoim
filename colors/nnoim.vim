" Reset syntax highlighting
highlight clear

if exists("syntax_on")
  syntax reset
endif

" Declare theme name
let g:colors_name = "nnoim"

" Utility function
" https://github.com/noahfrederick/vim-hemisu/

function! s:h(group, style)
  execute "highlight" a:group
        \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
        \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
        \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
        \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
        \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
        \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
        \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Define colors
let s:black            = { "gui": "#000000", "cterm": "16"  }
let s:dark            = { "gui": "#101010", "cterm": "16"  }
let s:light            = { "gui": "#B4B4B4", "cterm": "231" }
let s:white            = { "gui": "#E9E9E9", "cterm": "231" }
let s:dark01            = { "gui": "#484848", "cterm": "231" }
let s:dark02            = { "gui": "#151515", "cterm": "231" }
let s:dark03            = { "gui": "#2E2E2E", "cterm": "231" }
let s:dark04            = { "gui": "#5F5F5F", "cterm": "231" }
let s:dark05            = { "gui": "#222222", "cterm": "231" }
let s:cyan            = { "gui": "#8AE1D5", "cterm": "231" }
let s:yellow            = { "gui": "#FFF148", "cterm": "231" }
let s:red            = { "gui": "#FF2929", "cterm": "231" }

" Semantic names

let s:bg = s:dark
let s:norm = s:light
let s:dimmed = s:dark01
let s:faint = s:dark03
let s:extraFaint = s:dark05
let s:bright = s:white
let s:comment = s:dark01
let s:accent = s:cyan
let s:accent2 = s:yellow
let s:accent3 = s:red
let s:menuBg = s:dark04
let s:menuText = s:black
let s:gutterBg = s:dark02
let s:splitBg = s:dark02

" Syntax Groups (descriptions and ordering from `:h w18`)

call s:h("Comment", { "fg": s:comment, "gui": "italic", "cterm": "italic" }) " any comment
call s:h("Constant", { "fg": s:bright }) " any constant
call s:h("String", { "fg": s:accent }) " a string constant: "this is a string"
" call s:h("Character", { "fg": s:green }) " a character constant: 'c', '\n'
" call s:h("Number", { "fg": s:dark_yellow }) " a number constant: 234, 0xff
" call s:h("Boolean", { "fg": s:dark_yellow }) " a boolean constant: TRUE, false
" call s:h("Float", { "fg": s:dark_yellow }) " a floating point constant: 2.3e10
call s:h("Identifier", { "fg": s:bright }) " any variable name
call s:h("Function", { "fg": s:bright, "gui": "bold", "cterm": "bold" }) " function name (also: methods for classes)
call s:h("Statement", { "fg": s:norm }) " any statement
call s:h("Conditional", { "fg": s:bright }) " if, then, else, endif, switch, etc.
" call s:h("Repeat", { "fg": s:purple }) " for, do, while, etc.
" call s:h("Label", { "fg": s:purple }) " case, default, etc.
" call s:h("Operator", { "fg": s:purple }) " sizeof", "+", "*", etc.
" call s:h("Keyword", { "fg": s:red }) " any other keyword
" call s:h("Exception", { "fg": s:purple }) " try, catch, throw
call s:h("PreProc", { "fg": s:bright }) " generic Preprocessor
" call s:h("Include", { "fg": s:blue }) " preprocessor #include
" call s:h("Define", { "fg": s:purple }) " preprocessor #define
" call s:h("Macro", { "fg": s:purple }) " same as Define
" call s:h("PreCondit", { "fg": s:yellow }) " preprocessor #if, #else, #endif, etc.
call s:h("Type", { "fg": s:bright }) " int, long, char, etc.
" call s:h("StorageClass", { "fg": s:yellow }) " static, register, volatile, etc.
" call s:h("Structure", { "fg": s:yellow }) " struct, union, enum, etc.
" call s:h("Typedef", { "fg": s:yellow }) " A typedef
call s:h("Special", { "fg": s:bright }) " any special symbol
" call s:h("SpecialChar", {}) " special character in a constant
" call s:h("Tag", {}) " you can use CTRL-] on this
call s:h("Delimiter", { "fg": s:bright }) " character that needs attention
call s:h("SpecialComment", { "fg": s:comment }) " special things inside a comment
" call s:h("Debug", {}) " debugging statements
" call s:h("Underlined", { "gui": "underline", "cterm": "underline" }) " text that stands out, HTML links
" call s:h("Ignore", {}) " left blank, hidden
call s:h("Error", { "fg": s:accent3 }) " any erroneous construct
call s:h("Todo", { "fg": s:bright, "bg": s:comment, "gui": "bold", "cterm": "bold" }) " anything that needs extra attention; mostly the keywords TODO FIXME and XXX

" Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

call s:h("ColorColumn", { "bg": s:extraFaint }) " used for the columns set with 'colorcolumn'
" call s:h("Conceal", {}) " placeholder characters substituted for concealed text (see 'conceallevel')
" call s:h("Cursor", { "fg": s:black, "bg": s:blue }) " the character under the cursor
" call s:h("CursorIM", {}) " like Cursor, but used when in IME mode
call s:h("CursorColumn", { "bg": s:extraFaint }) " the screen column that the cursor is in when 'cursorcolumn' is set
call s:h("CursorLine", { "bg": s:extraFaint }) " the screen line that the cursor is in when 'cursorline' is set
" call s:h("Directory", { "fg": s:blue }) " directory names (and other special names in listings)
" call s:h("DiffAdd", { "bg": s:green, "fg": s:black }) " diff mode: Added line
" call s:h("DiffChange", { "bg": s:yellow, "fg": s:black }) " diff mode: Changed line
" call s:h("DiffDelete", { "bg": s:red, "fg": s:black }) " diff mode: Deleted line
" call s:h("DiffText", { "bg": s:black, "fg": s:yellow }) " diff mode: Changed text within a changed line
" call s:h("ErrorMsg", { "fg": s:red }) " error messages on the command line
call s:h("VertSplit", { "fg": s:faint, "bg": s:splitBg }) " the column separating vertically split windows
" call s:h("Folded", { "fg": s:comment_grey }) " line used for closed folds
" call s:h("FoldColumn", {}) " 'foldcolumn'
call s:h("SignColumn", { "bg": s:gutterBg }) " column where signs are displayed
call s:h("IncSearch", { "fg": s:accent2, "bg": s:comment }) " 'incsearch' highlighting; also used for the text replaced with ":s///c"
call s:h("LineNr", { "fg": s:dimmed, "bg": s:gutterBg }) " Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
call s:h("CursorLineNr", { "fg": s:bright, "gui": "bold", "cterm": "bold" }) " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
" call s:h("MatchParen", { "fg": s:blue, "gui": "underline" }) " The character under the cursor or just before it, if it is a paired bracket, and its match.
" call s:h("ModeMsg", {}) " 'showmode' message (e.g., "-- INSERT --")
" call s:h("MoreMsg", {}) " more-prompt
call s:h("NonText", { "fg": s:faint }) " '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
call s:h("Normal", { "fg": s:norm, "bg": s:bg }) " normal text
call s:h("Pmenu", { "bg": s:menuBg }) " Popup menu: normal item.
call s:h("PmenuSel", { "fg": s:menuText, "bg": s:accent }) " Popup menu: selected item.
call s:h("PmenuSbar", { "bg": s:faint }) " Popup menu: scrollbar.
call s:h("PmenuThumb", { "bg": s:bright }) " Popup menu: Thumb of the scrollbar.
call s:h("Question", { "fg": s:accent2 }) " hit-enter prompt and yes/no questions
call s:h("Search", { "fg": s:accent2, "bg": s:comment }) " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
" call s:h("QuickFixLine", { "fg": s:black, "bg": s:yellow }) " Current quickfix item in the quickfix window.
" call s:h("SpecialKey", { "fg": s:special_grey }) " Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
" call s:h("SpellBad", { "fg": s:red, "gui": "underline", "cterm": "underline" }) " Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
" call s:h("SpellCap", { "fg": s:dark_yellow }) " Word that should start with a capital. This will be combined with the highlighting used otherwise.
" call s:h("SpellLocal", { "fg": s:dark_yellow }) " Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
" call s:h("SpellRare", { "fg": s:dark_yellow }) " Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
" call s:h("StatusLine", { "fg": s:white, "bg": s:cursor_grey }) " status line of current window
" call s:h("StatusLineNC", { "fg": s:comment_grey }) " status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
" call s:h("TabLine", { "fg": s:comment_grey }) " tab pages line, not active tab page label
" call s:h("TabLineFill", {}) " tab pages line, where there are no labels
" call s:h("TabLineSel", { "fg": s:white }) " tab pages line, active tab page label
call s:h("Title", { "fg": s:accent }) " titles for output from ":set all", ":autocmd" etc.
" call s:h("Visual", { "fg": s:visual_black, "bg": s:visual_grey }) " Visual mode selection
" call s:h("VisualNOS", { "bg": s:visual_grey }) " Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
" call s:h("WarningMsg", { "fg": s:yellow }) " warning messages
" call s:h("WildMenu", { "fg": s:black, "bg": s:blue }) " current match in 'wildmenu' completion
