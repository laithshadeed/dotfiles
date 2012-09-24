" Maintainer: Christian Angermann
" Version: 6.03

hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="cange"

" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).

" Description:
" This color scheme was originally created by combining my favorite parts of
" the following color schemes:
"
"
" Version 6+ has been revamped a bit from the original color scheme. If you
" prefer the old style, or the 'blue' version, use the 5Final release. Version
" 6+ only has a light and dark version. The new version tries to unify some of
" the colors and also adds more contrast between text and interface.
"
" The color scheme is dark, by default. You can change this by setting the
" g:cange_style variable to "light" or "dark". Once the color scheme is
" loaded, you can use the commands "CangeLight" or "CangeDark" to change
" schemes quickly.
"
"
" colorsupport.vim (vimscript #2682) is used to help with mapping the GUI
" settings to the 256 terminal colors.
"
" This color scheme also has custom colors defined for the following plugins:
"
" Installation:
" Copy the file to your vim colors directory and then do :colorscheme cange.

set background=dark
if exists("g:cange_style")
  if g:cange_style == "light"
    set background=light
  endif
else
  let g:cange_style="dark"
endif

" Green
let s:greenDarker    = "#155015 "
let s:greenDark      = "#2C852C "
let s:green          = "#57A957 "
let s:greenLight     = "#8CCC8C "
let s:greenLighter   = "#C0E0C0 "
" Blue
" http://colorschemedesigner.com/#3o11v--Arg0g00QuVh1P.LV2FKFK3JRX.4BpYu
let s:blueDarker     = "#154552 "
let s:blueDark       = "#2B7387 "
let s:blue           = "#45B2D1 "
let s:blueLight      = "#8DC2D1 "
let s:blueLighter    = "#C0E0E9 "
" Red
" http://colorschemedesigner.com/#01123parB6q6q1UBTs2TsP.3RRXN4PNYg
let s:redDarker      = "#612D3B "
let s:redDark        = "#9B3230 "
let s:red            = "#DC332F "
let s:redLight       = "#E5625F "
let s:redLighter     = "#E99A98 "
" Orange
let s:orangeDarker   = "#332E28 "
let s:orangeDark     = "#5F472C "
let s:orange         = "#FF8700 "
let s:orangeLight    = "#ED9E45 "
let s:orangeLighter  = "#EFD5B8 "

" let s:ctOrangeDarker = " "
let s:ctOrangeDark   = "234 "
let s:ctOrange       = "208 "
let s:ctOrangeLight  = "223 "
" let s:ctOrangeLighter= ""
" Purple
let s:purpleDarker   = "#6E3BA2 "
let s:purpleDark     = "#4C1C7E "
let s:purple         = "#9462C7 "
let s:purpleLight    = "#B896DB "
let s:purpleLighter  = "#CCBBDC "
" Yellow
" http://colorschemedesigner.com/#1z11vhWs0g0g00MBVK1OrSj2QXPl3IIY14FZZa
let s:yellowDarker   = "#68642C "
let s:yellowDark     = "#A9A346 "
let s:yellow         = "#DBD254 "
let s:yellowLight    = "#FBF58E "
let s:yellowLighter  = "#FFFBBD "
let s:ctYellowDarker = "100 "
let s:ctYellowDark   = "3 "
let s:ctYellow       = "185 "
let s:ctYellowLight  = "11 "
let s:ctYellowLighter= "229 "
" Grey
let s:black          = "#000000 "
let s:greyDarkest    = "#1C1C1C "
let s:greyDarker     = "#202020 "
let s:greyDark       = "#303030 "
let s:grey           = "#404040 "
let s:greyLight      = "#767676 "
let s:greyLighter    = "#BCBCBC "
let s:greyLightest   = "#EFEFEF "
let s:white          = "#F9F9F9 "
let s:ctGreyDarkest  = "234 "
let s:ctGreyDarker   = "235 "
let s:ctGreyDark     = "236 "
let s:ctGrey         = "238 "
let s:ctGreyLight    = "276 "
let s:ctGreyLighter  = "250 "
let s:ctGreyLightest = "254 "
let s:ctWhite        = "15 "

" #############################################################################
let s:bgWhite          = "guibg=".s:white        ." ctermbg=15   "
let s:fgWhite          = "guifg=".s:white        ." ctermfg=15   "

let s:bgBlueDarker     = "guibg=".s:blueDarker   ." ctermbg=25  "
let s:fgBlueDarker     = "guifg=".s:blueDarker   ." ctermfg=25  "
let s:bgBlueDark       = "guibg=".s:blueDark     ." ctermbg=32  "
let s:fgBlueDark       = "guifg=".s:blueDark     ." ctermfg=32  "
let s:bgBlue           = "guibg=".s:blue         ." ctermbg=74  "
let s:fgBlue           = "guifg=".s:blue         ." ctermfg=74  "
let s:bgBlueLight      = "guibg=".s:blueLight    ." ctermbg=74  "
let s:fgBlueLight      = "guifg=".s:blueLight    ." ctermfg=74  "
let s:bgBlueLighter    = "guibg=".s:blueLighter  ." ctermbg=23  "
let s:fgBlueLighter    = "guifg=".s:blueLighter  ." ctermfg=23  "

let s:bgGreenDarker    = "guibg=".s:greenDarker  ." ctermbg=23  "
let s:fgGreenDarker    = "guifg=".s:greenDarker  ." ctermfg=23  "
let s:bgGreenDark      = "guibg=".s:greenDark    ." ctermbg=24  "
let s:fgGreenDark      = "guifg=".s:greenDark    ." ctermfg=24  "
let s:bgGreen          = "guibg=".s:green        ." ctermbg=115 "
let s:fgGreen          = "guifg=".s:green        ." ctermfg=115 "
let s:bgGreenLight     = "guibg=".s:greenLight   ." ctermbg=116 "
let s:fgGreenLight     = "guifg=".s:greenLight   ." ctermfg=116 "
let s:bgGreenLighter   = "guibg=".s:greenLighter ." ctermbg=116 "
let s:fgGreenLighter   = "guifg=".s:greenLighter ." ctermfg=116 "

let s:bgYellowDarker   = "guibg=".s:yellowDarker ." ctermbg=".s:ctYellowDarker
let s:fgYellowDarker   = "guifg=".s:yellowDarker ." ctermfg=".s:ctYellowDarker
let s:bgYellowDark     = "guibg=".s:yellowDark   ." ctermbg=".s:ctYellowDark
let s:fgYellowDark     = "guifg=".s:yellowDark   ." ctermfg=".s:ctYellowDark
let s:bgYellow         = "guibg=".s:yellow       ." ctermbg=".s:ctYellow
let s:fgYellow         = "guifg=".s:yellow       ." ctermfg=".s:ctYellow
let s:bgYellowLight    = "guibg=".s:yellowLight  ." ctermbg=".s:ctYellowLight
let s:fgYellowLight    = "guifg=".s:yellowLight  ." ctermfg=".s:ctYellowLight
let s:bgYellowLighter  = "guibg=".s:yellowLighter." ctermbg=".s:ctYellowLighter
let s:fgYellowLighter  = "guifg=".s:yellowLighter." ctermfg=".s:ctYellowLighter

let s:spYellowDarker   = "guisp=".s:yellowDarker
let s:spYellowDark     = "guisp=".s:yellowDark
let s:spYellowLighter  = "guisp=".s:yellowLighter

let s:bgRedDarker      = "guibg=".s:redDarker    ." ctermbg=234 "
let s:fgRedDarker      = "guifg=".s:redDarker    ." ctermfg=234 "
let s:bgRedDark        = "guibg=".s:redDark      ." ctermbg=52  "
let s:fgRedDark        = "guifg=".s:redDark      ." ctermfg=52  "
let s:bgRed            = "guibg=".s:red          ." ctermbg=160 "
let s:fgRed            = "guifg=".s:red          ." ctermfg=160 "
let s:bgRedLight       = "guibg=".s:redLight     ." ctermbg=167 "
let s:fgRedLight       = "guifg=".s:redLight     ." ctermfg=167 "
let s:bgRedLighter     = "guibg=".s:redLighter   ." ctermbg=250 "
let s:fgRedLighter     = "guifg=".s:redLighter   ." ctermfg=250 "

let s:spRed            = "guisp=".s:red

let s:bgOrangeDarker   = "guibg=".s:orangeDarker  ." ctermbg=234 "
let s:fgOrangeDarker   = "guifg=".s:orangeDarker  ." ctermfg=234 "
let s:bgOrangeDark     = "guibg=".s:orangeDark    ." ctermbg=".s:ctOrangeDark
let s:fgOrangeDark     = "guifg=".s:orangeDark    ." ctermfg=".s:ctOrangeDark
let s:bgOrange         = "guibg=".s:orange        ." ctermbg=".s:ctOrange
let s:fgOrange         = "guifg=".s:orange        ." ctermfg=".s:ctOrange
let s:bgOrangeLight    = "guibg=".s:orangeLight   ." ctermbg=".s:ctOrangeLight
let s:fgOrangeLight    = "guifg=".s:orangeLight   ." ctermfg=".s:ctOrangeLight
let s:bgOrangeLighter  = "guibg=".s:orangeLighter ." ctermbg=250 "
let s:fgOrangeLighter  = "guifg=".s:orangeLighter ." ctermfg=250 "

let s:bgPurpleDarker   = "guibg=".s:purpleDarker  ." ctermbg=234 "
let s:fgPurpleDarker   = "guifg=".s:purpleDarker  ." ctermfg=234 "
let s:bgPurpleDark     = "guibg=".s:purpleDark    ." ctermbg=52  "
let s:fgPurpleDark     = "guifg=".s:purpleDark    ." ctermfg=52  "
let s:bgPurple         = "guibg=".s:purple        ." ctermbg=160 "
let s:fgPurple         = "guifg=".s:purple        ." ctermfg=160 "
let s:bgPurpleLight    = "guibg=".s:purpleLight   ." ctermbg=167 "
let s:fgPurpleLight    = "guifg=".s:purpleLight   ." ctermfg=167 "
let s:bgPurpleLighter  = "guibg=".s:purpleLighter ." ctermbg=250 "
let s:fgPurpleLighter  = "guifg=".s:purpleLighter ." ctermfg=250 "

let s:bgGreyDarkest    = "guibg=".s:greyDarkest  ." ctermbg=".s:ctGreyDarkest
let s:fgGreyDarkest    = "guifg=".s:greyDarkest  ." ctermfg=".s:ctGreyDarkest
let s:bgGreyDarker     = "guibg=".s:greyDarker   ." ctermbg=".s:ctGreyDarker
let s:fgGreyDarker     = "guifg=".s:greyDarker   ." ctermfg=".s:ctGreyDarker
let s:bgGreyDark       = "guibg=".s:greyDark     ." ctermbg=".s:ctGreyDark
let s:fgGreyDark       = "guifg=".s:greyDark     ." ctermfg=".s:ctGreyDark
let s:bgGrey           = "guibg=".s:grey         ." ctermbg=".s:ctGrey
let s:fgGrey           = "guifg=".s:grey         ." ctermfg=".s:ctGrey
let s:bgGreyLight      = "guibg=".s:greyLight    ." ctermbg=".s:ctGreyLight
let s:fgGreyLight      = "guifg=".s:greyLight    ." ctermfg=".s:ctGreyLight
let s:bgGreyLighter    = "guibg=".s:greyLighter  ." ctermbg=".s:ctGreyLighter
let s:fgGreyLighter    = "guifg=".s:greyLighter  ." ctermfg=".s:ctGreyLighter
let s:bgGreyLightest   = "guibg=".s:greyLightest ." ctermbg=".s:ctGreyLightest
let s:fgGreyLightest   = "guifg=".s:greyLightest ." ctermfg=".s:ctGreyLightest
" ############################# FORMATS #######################################
let s:bgNone           = "guibg=NONE     ctermbg=NONE "
let s:fgNone           = "guifg=NONE     ctermfg=NONE "
let s:bgInherit        = "guibg=BG       ctermbg=BG   "
let s:fgInherit        = "guifg=FG       ctermfg=FG   "
let s:bgInvert         = "guibg=FG       ctermbg=FG   "
let s:fgInvert         = "guifg=BG       ctermfg=BG   "
let s:bold             = "gui=BOLD       cterm=BOLD   "
let s:italic           = "gui=ITALIC     cterm=ITALIC "
let s:italicBold       = "gui=ITALIC,BOLD cterm=ITALIC,BOLD "
let s:none             = "gui=NONE       cterm=NONE   "
let s:underline        = "gui=UNDERLINE  cterm=UNDERLINE "
let s:undercurl        = "gui=UNDERCURL  cterm=UNDERCURL "
" ############################## MODES ########################################
let s:modeNormalDark   = "#2F331D "
let s:modeNormal       = "#AFD700 "
let s:modeNormalLight  = "#EFF7CC "
let s:ctModeNormalDark = "58 "
let s:ctModeNormal     = "148 "
let s:ctModeNormalLight= "192 "

let s:bgModeNormalDark = "guibg=".s:modeNormalDark ." ctermbg=".s:ctModeNormalDark
let s:fgModeNormalDark = "guifg=".s:modeNormalDark ." ctermfg=".s:ctModeNormalDark
let s:bgModeNormal     = "guibg=".s:modeNormal     ." ctermbg=".s:ctModeNormal
let s:fgModeNormal     = "guifg=".s:modeNormal     ." ctermfg=".s:ctModeNormal
let s:bgModeNormalLight= "guibg=".s:modeNormalLight." ctermbg=".s:ctModeNormalLight
let s:fgModeNormalLight= "guifg=".s:modeNormalLight." ctermfg=".s:ctModeNormalLight
let s:bgModeVisualDark = s:bgOrangeDark
let s:fgModeVisualDark = s:fgOrangeDark
let s:bgModeVisual     = s:bgOrange
let s:fgModeVisual     = s:fgOrange
let s:fgModeVisualLight= s:bgOrangeLight
let s:bgModeVisualLight= s:fgOrangeLight
let s:bgModeInsert     = s:bgWhite
let s:fgModeInsert     = s:fgWhite
let s:bgModeInsertDark = "guibg=".s:blueDarker    ." ctermbg=23   "
let s:fgModeInsertDark = "guifg=".s:blueDarker    ." ctermfg=23   "
let s:bgModeInsertLight= "guibg=".s:blueDark      ." ctermbg=31   "
let s:fgModeInsertLight= "guifg=".s:blueDark      ." ctermfg=31   "
" #############################################################################
" cursor shapes and behaviours
set guicursor =n-c:block-Cursor
set guicursor+=n-c:blinkon0
set guicursor+=r-cr:hor10-rCursor/block-lCursor
set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
set guicursor+=v:block-vCursor/lCursor-blinkon0


if g:cange_style == "dark"

let g:Powerline_colorscheme = 'skwp'

" == define cursor ============================================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                    = "\<Esc>]12;".s:white."\x7"
  let &t_EI                    = "\<Esc>]12;".s:modeNormal."\x7"
  silent !echo -ne                 "\033]12;".s:greyLight."\007"
  autocmd VimLeave * silent !echo -ne "\033]".s:greyLight."\007"
endif

exe "hi! Normal        " .s:bgGreyDarker     .s:fgGreyLighter     .s:none
exe "hi! Comment       " .s:bgNone           .s:fgGrey            .s:none
"   *Comment           any comment
exe "hi! Constant      " .s:bgNone           .s:fgGreenLighter       .s:none
"   *Constant          any constant
"    String            a string constant: "this is a string"
"    Character         a character constant: 'c', '\n'
"    Number            a number constant: 234, 0xff
"    Boolean           a boolean constant: TRUE, false
"    Float             a floating point constant: 2.3e10
exe "hi! Identifier    " .s:bgNone           .s:fgGreenLighter      .s:none
"   *Identifier        any variable name
"    Function          function name (also: methods for classes)
exe "hi! Statement     " .s:bgNone           .s:fgBlue      .s:none
"   *Statement         any statement
"    Conditional       if, then, else, endif, switch, etc.
"    Repeat            for, do, while, etc.
"    Label             case, default, etc.
"    Operator          "sizeof", "+", "*", etc.
"    Keyword           any other keyword
"    Exception         try, catch, throw
exe "hi! PreProc       " .s:bgNone           .s:fgYellowLighter   .s:none
"   *PreProc           generic Preprocessor
"    Include           preprocessor #include
"    Define            preprocessor #define
"    Macro             same as Define
"    PreCondit         preprocessor #if, #else, #endif, etc.
exe "hi! Type          " .s:bgNone           .s:fgGreenLight           .s:none
"   *Type              int, long, char, etc.
"    StorageClass      static, register, volatile, etc.
"    Structure         struct, union, enum, etc.
"    Typedef           A typedef
exe "hi! Special       " .s:bgNone           .s:fgPurpleLight     .s:none
"   *Special           any special symbol
"    SpecialChar       special character in a constant
"    Tag               you can use CTRL-] on this
"    Delimiter         character that needs attention
"    SpecialComment    special things inside a comment
"    Debug             debugging statements
" == Text Markup ==
exe "hi! Underlined    " .s:bgInherit        .s:fgInherit         .s:underline
"   *Underlined        text that stands out, HTML links
exe "hi! Error         " .s:bgRedDark        .s:fgGreyLighter     .s:none
"   *Ignore            left blank, hidden  |hl-Ignore|
exe "hi! Todo          " .s:bgYellowDark     .s:fgGreyDark        .s:none
"   *Error             any erroneous construct
exe "hi! MatchParen    " .s:bgInherit        .s:fgYellowDark      .s:bold
"   *Todo              anything that needs extra attention; mostly the
"
" Invisible character colors
exe "hi! NonText       " .s:bgNone           .s:fgBlueDarker      .s:none
exe "hi! SpecialKey    " .s:bgNone           .s:fgBlueDarker      .s:none
exe "hi! Title         " .s:bgNone           .s:fgBlueLight       .s:bold
" == Text Selection ==
exe "hi! CursorIM      " .s:bgGreenLight     .s:fgInvert          .s:none
exe "hi! CursorColumn  " .s:bgYellowLighter  .s:fgNone            .s:none
exe "hi! CursorLine    " .s:bgGreyDarkest    .s:fgNone            .s:none
" == Cursors ==
exe "hi! Cursor        " .s:bgModeNormal                          .s:none
exe "hi! iCursor       " .s:bgModeInsert                          .s:none
exe "hi! rCursor       " .s:bgModeInsert                          .s:none
exe "hi! vCursor       " .s:bgModeVisual     .s:fgModeVisualDark  .s:none
" == Selections ==
exe "hi! Visual        " .s:bgModeVisualDark .s:fgModeVisual      .s:none
exe "hi! VisualNOS     " .s:bgNone           .s:fgModeVisual      .s:underline
exe "hi! IncSearch     " .s:bgModeNormal     .s:fgModeNormalDark  .s:none
exe "hi! Search        " .s:bgModeNormalDark .s:fgModeNormal      .s:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " .s:bgGreyDark       .s:fgGreyLight       .s:none
exe "hi! PmenuSel      " .s:bgGreyDarker     .s:fgRed             .s:none
exe "hi! PMenuSbar     " .s:bgGreyDarker                          .s:none
exe "hi! PMenuThumb    " .s:bgRedDark                             .s:none
" -- vertical separator line --
exe "hi! Folded        " .s:bgNone           .s:fgGrey            .s:none
exe "hi! FoldColumn    " .s:bgGreyDark       .s:fgGreyLight       .s:none
exe "hi! VertSplit     " .s:bgGrey           .s:fgGrey            .s:none
exe "hi! LineNr        " .s:bgGreyDark       .s:fgGreyDarkest     .s:none
exe "hi! ColorColumn   " .s:bgGreyDarkest    .s:fgNone            .s:none
" -- Status bars --
exe "hi! StatusLine    " .s:bgGrey           .s:fgInherit         .s:none
exe "hi! StatusLineNC  " .s:bgGrey           .s:fgNone            .s:none
exe "hi! TabLine       " .s:bgGreyLightest   .s:fgGreyDarker      .s:none
exe "hi! TabLineFill   " .s:bgGreyLightest   .s:fgGrey            .s:none
exe "hi! TabLineSel    " .s:bgBlueLighter    .s:fgGreyLightest    .s:none
" == Spelling ==
exe "hi! SpellBad      " .s:bgNone           .s:fgNone            .s:undercurl   .s:spRed
exe "hi! SpellCap      " .s:bgNone           .s:fgNone            .s:undercurl   .s:spYellowDark
exe "hi! SpellRare     " .s:bgNone           .s:fgNone            .s:undercurl   .s:spYellowLighter
exe "hi! SpellLocal    " .s:bgNone           .s:fgNone            .s:undercurl   .s:spYellowDarker
"  == Diff ==
exe "hi! DiffAdd       " .s:bgGrey           .s:fgInherit         .s:none
exe "hi! DiffChange    " .s:bgOrangeDark     .s:fgInherit         .s:none
exe "hi! DiffDelete    " .s:bgOrangeDarker   .s:fgInherit         .s:none
exe "hi! DiffText      " .s:bgOrangeDark     .s:fgYellow          .s:none
" == Misc ==
exe "hi! Directory     " .s:bgNone           .s:fgGreenLight      .s:none
exe "hi! SignColumn    " .s:bgGreyDark       .s:fgGreyLighter     .s:none
exe "hi! MoreMsg       " .s:bgNone           .s:fgBlueLight       .s:none
exe "hi! ModeMsg       " .s:bgNone           .s:fgInherit         .s:none
exe "hi! ErrorMsg      " .s:bgInherit        .s:fgRed             .s:none
exe "hi! WarningMsg    " .s:bgInherit        .s:fgOrangeLight     .s:none
exe "hi! Question      " .s:bgNone           .s:fgGreenLight      .s:none
exe "hi! WildMenu      " .s:bgNone           .s:fgBlueDarker      .s:none
exe "hi! Ignore        "                     .s:fgInvert
" == custom types by cange ==
exe "hi! String        " .s:bgNone           .s:fgRedLight        .s:none
exe "hi! BString       " .s:bgNone           .s:fgRedLight        .s:bold
exe "hi! Function      " .s:bgNone           .s:fgBlueLight       .s:bold



elseif g:cange_style == "light"



let g:Powerline_colorscheme = 'default'

" == define cursor ============================================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                    = "\<Esc>]12;".s:greyDark       . "\x7"
  let &t_EI                    = "\<Esc>]12;".s:modeNormalDark . "\x7"
  silent !echo -ne                 "\033]12;".s:greyDarkest    . "\007"
  autocmd VimLeave * silent !echo -ne "\033]".s:greyDarkest    . "\007"
endif

exe "hi! Normal        " .s:bgWhite          .s:fgGreyDarkest     .s:none
exe "hi! Comment       " .s:bgNone           .s:fgGreyLighter     .s:none
exe "hi! Constant      " .s:bgNone           .s:fgGreenDark       .s:none
exe "hi! Identifier    " .s:bgNone           .s:fgBlueDark        .s:none
exe "hi! Statement     " .s:bgNone           .s:fgBlueDarker      .s:none
exe "hi! PreProc       " .s:bgNone           .s:fgYellowDarker    .s:none
exe "hi! Type          " .s:bgNone           .s:fgGreenDark       .s:none
" == Text Markup ==
exe "hi! Underlined    " .s:bgInherit        .s:fgInherit         .s:underline
exe "hi! Error         " .s:bgRedDark        .s:fgGreyLighter     .s:none
exe "hi! Todo          " .s:bgYellowDark     .s:fgGreyDark        .s:none
exe "hi! MatchParen    " .s:bgInherit        .s:fgYellowDark      .s:bold
" Invisible character colors
exe "hi! NonText       " .s:bgNone           .s:fgGreenLighter    .s:none
exe "hi! SpecialKey    " .s:bgNone           .s:fgBlueDarker      .s:none
exe "hi! Title         " .s:bgNone           .s:fgBlueLight       .s:bold
" == Text Selection ==
exe "hi! CursorIM      " .s:bgGreenLight     .s:fgInvert          .s:none
exe "hi! CursorColumn  " .s:bgYellowLighter  .s:fgNone            .s:none
exe "hi! CursorLine    " .s:bgGreyLightest   .s:fgNone            .s:none
" == Cursors ==
exe "hi! Cursor        " .s:bgModeNormal                          .s:none
exe "hi! iCursor       " .s:bgModeInsertDark                      .s:none
exe "hi! rCursor       " .s:bgModeInsertDark                      .s:none
exe "hi! vCursor       " .s:bgModeVisual     .s:fgInvert          .s:none
" == Selections ==
exe "hi! Visual        " .s:bgModeVisualLight.s:fgModeVisual      .s:none
exe "hi! VisualNOS     " .s:bgNone           .s:fgModeVisual      .s:underline
exe "hi! IncSearch     " .s:bgModeNormalLight.s:fgModeNormal      .s:none
exe "hi! Search        " .s:bgModeNormal     .s:fgModeNormalDark  .s:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " .s:bgGreyLighter    .s:fgGreyLight       .s:none
exe "hi! PmenuSel      " .s:bgGreyLight      .s:fgGreyLightest    .s:none
exe "hi! PMenuSbar     " .s:bgGreyLight                           .s:none
exe "hi! PMenuThumb    " .s:bgRedDark                             .s:none
" -- vertical separator line --
exe "hi! Folded        " .s:bgNone           .s:fgGreyLight       .s:none
exe "hi! FoldColumn    " .s:bgGreyLight      .s:fgGreyDark        .s:none
exe "hi! VertSplit     " .s:bgGreyLighter    .s:fgGreyLighter     .s:none
exe "hi! LineNr        " .s:bgGreyLightest   .s:fgGreyLighter     .s:none
exe "hi! ColorColumn   " .s:bgGreyLightest   .s:fgNone            .s:none
" -- Status bars --
exe "hi! StatusLine    " .s:bgGreyLighter    .s:fgInherit         .s:none
exe "hi! StatusLineNC  " .s:bgGreyLighter    .s:fgNone            .s:none
exe "hi! TabLine       " .s:bgGreyDarkest    .s:fgGreyLightest    .s:none
exe "hi! TabLineFill   " .s:bgGreyDarkest    .s:fgGrey            .s:none
exe "hi! TabLineSel    " .s:bgBlueDarker     .s:fgGreyLightest    .s:none
" == Spelling ==
exe "hi! SpellBad      " .s:bgNone           .s:fgNone            .s:undercurl   .s:spRed
exe "hi! SpellCap      " .s:bgNone           .s:fgNone            .s:undercurl   .s:spYellowDark
exe "hi! SpellRare     " .s:bgNone           .s:fgNone            .s:undercurl   .s:spYellowLighter
exe "hi! SpellLocal    " .s:bgNone           .s:fgNone            .s:undercurl   .s:spYellowDarker
"  == Diff ==
exe "hi! DiffAdd       " .s:bgGrey           .s:fgInherit         .s:none
exe "hi! DiffChange    " .s:bgOrangeDark     .s:fgInherit         .s:none
exe "hi! DiffDelete    " .s:bgOrangeDarker   .s:fgInherit         .s:none
exe "hi! DiffText      " .s:bgOrangeDark     .s:fgYellow          .s:none
" == Misc ==
exe "hi! Directory     " .s:bgNone           .s:fgGreenDark       .s:none
exe "hi! SignColumn    " .s:bgGreyLight      .s:fgGreyDarker      .s:none
exe "hi! MoreMsg       " .s:bgNone           .s:fgBlueDark        .s:none
exe "hi! ModeMsg       " .s:bgNone           .s:fgInherit         .s:none
exe "hi! ErrorMsg      " .s:bgRed            .s:fgWhite           .s:none
exe "hi! WarningMsg    " .s:bgInherit        .s:fgOrange          .s:none
exe "hi! Question      " .s:bgGreenDark      .s:fgWhite           .s:none
exe "hi! WildMenu      " .s:bgNone           .s:fgBlueDarker      .s:none
exe "hi! Ignore        "                     .s:fgInvert
" == custom types by cange ==
exe "hi! String        " .s:bgNone           .s:fgRedDark         .s:none
exe "hi! BString       " .s:bgNone           .s:fgRedDark         .s:bold
exe "hi! Function      " .s:bgNone           .s:fgBlueDarker      .s:bold

endif

" == Vimwiki Colors ==
hi link VimwikiHeader1 BConstant
hi link VimwikiHeader2 BIdentifier
hi link VimwikiHeader3 BStatement
hi link VimwikiHeader4 BSpecial
hi link VimwikiHeader5 BPreProc
hi link VimwikiHeader6 BType

" == Tagbar Colors ==
hi link TagbarAccessPublic Constant
hi link TagbarAccessProtected Type
hi link TagbarAccessPrivate PreProc

" == Commands ==
command! CangeLight let g:cange_style = "light" | colorscheme cange
command! CangeDark let g:cange_style = "dark" | colorscheme cange

