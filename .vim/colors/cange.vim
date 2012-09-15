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
let s:greenDarker  = "#002B36 "
let s:greenDark    = "#073642 "
let s:green        = "#90D0A0 "
let s:greenLight   = "#86C6B6 "
let s:greenLighter = "#B0CBC0 "
" Blue
let s:blueDarker   = "#005F87 "
let s:blueDark     = "#268BD2 "
let s:blue         = "#70C0d8 "
let s:blueLight    = "#87D7FF "
let s:blueLighter  = "#405060 "
" Red
" http://colorschemedesigner.com/#01123parB6q6q1UBTs2TsP.3RRXN4PNYg
let s:redDarker    = "#A42A27 "
let s:redDark      = "#C32B27 "
let s:red          = "#DC332F "
let s:redLight     = "#E54642 "
let s:redLighter   = "#E95652 "
" Yellow
" http://colorschemedesigner.com/#1z51vhWs0g0g04GEZaaUBOrcGcZR
let s:yellowDarker = "#D8A93D "
let s:yellowDark   = "#C3B764 "
let s:yellow       = "#DFD062 "
let s:yellowLight  = "#E7D976 "
let s:yellowLighter= "#F0E699 "
" Grey
let s:greyDarkest  = "#1C1C1C "
let s:greyDarker   = "#202020 "
let s:greyDark     = "#303030 "
let s:grey         = "#404040 "
let s:greyLight    = "#767676 "
let s:greyLighter  = "#BCBCBC "
let s:greyLightest = "#E4E4E4 "
" #############################################################################
let s:bgWhite         = "guibg=#ffffff  ctermbg=15   "
let s:fgWhite         = "guifg=#ffffff  ctermfg=15   "

let s:bgBlueDarker    = "guibg=".s:blueDarker   ." ctermbg=25  "
let s:fgBlueDarker    = "guifg=".s:blueDarker   ." ctermfg=25  "
let s:bgBlueDark      = "guibg=".s:blueDark     ." ctermbg=32  "
let s:fgBlueDark      = "guifg=".s:blueDark     ." ctermfg=32  "
let s:bgBlue          = "guibg=".s:blue         ." ctermbg=74  "
let s:fgBlue          = "guifg=".s:blue         ." ctermfg=74  "
let s:bgBlueLight     = "guibg=".s:blueLight    ." ctermbg=74  "
let s:fgBlueLight     = "guifg=".s:blueLight    ." ctermfg=74  "
let s:bgBlueLighter   = "guibg=".s:blueLighter  ." ctermbg=23  "
let s:fgBlueLighter   = "guifg=".s:blueLighter  ." ctermfg=23  "

let s:bgGreenDarker   = "guibg=".s:greenDarker  ." ctermbg=23  "
let s:fgGreenDarker   = "guifg=".s:greenDarker  ." ctermfg=23  "
let s:bgGreenDark     = "guibg=".s:greenDark    ." ctermbg=24  "
let s:fgGreenDark     = "guifg=".s:greenDark    ." ctermfg=24  "
let s:bgGreen         = "guibg=".s:green        ." ctermbg=115 "
let s:fgGreen         = "guifg=".s:green        ." ctermfg=115 "
let s:bgGreenLight    = "guibg=".s:greenLight   ." ctermbg=116 "
let s:fgGreenLight    = "guifg=".s:greenLight   ." ctermfg=116 "
let s:bgGreenLighter  = "guibg=".s:greenLighter ." ctermbg=116 "
let s:fgGreenLighter  = "guifg=".s:greenLighter ." ctermfg=116 "

let s:bgYellowDarker  = "guibg=".s:yellowDarker ." ctermbg=234 "
let s:fgYellowDarker  = "guifg=".s:yellowDarker ." ctermfg=234 "
let s:bgYellowDark    = "guibg=".s:yellowDark   ." ctermbg=236 "
let s:fgYellowDark    = "guifg=".s:yellowDark   ." ctermfg=236 "
let s:bgYellow        = "guibg=".s:yellow       ." ctermbg=240 "
let s:fgYellow        = "guifg=".s:yellow       ." ctermfg=240 "
let s:bgYellowLight   = "guibg=".s:yellowLight  ." ctermbg=243 "
let s:fgYellowLight   = "guifg=".s:yellowLight  ." ctermfg=243 "
let s:bgYellowLighter = "guibg=".s:yellowLighter." ctermbg=250 "
let s:fgYellowLighter = "guifg=".s:yellowLighter." ctermfg=250 "

let s:spYellowDarker  = "guisp=".s:yellowDarker
let s:spYellowDark    = "guisp=".s:yellowDark
let s:spYellowLighter = "guisp=".s:yellowLighter

let s:bgRedDarker     = "guibg=".s:redDarker    ." ctermbg=234 "
let s:fgRedDarker     = "guifg=".s:redDarker    ." ctermfg=234 "
let s:bgRedDark       = "guibg=".s:redDark      ." ctermbg=52  "
let s:fgRedDark       = "guifg=".s:redDark      ." ctermfg=52  "
let s:bgRed           = "guibg=".s:red          ." ctermbg=160 "
let s:fgRed           = "guifg=".s:red          ." ctermfg=160 "
let s:bgRedLight      = "guibg=".s:redLight     ." ctermbg=167 "
let s:fgRedLight      = "guifg=".s:redLight     ." ctermfg=167 "
let s:bgRedLighter    = "guibg=".s:redLighter   ." ctermbg=250 "
let s:fgRedLighter    = "guifg=".s:redLighter   ." ctermfg=250 "

let s:spRed           = "guisp=".s:red

let s:bgGreyDarkest   = "guibg=".s:greyDarkest  ." ctermbg=233 "
let s:fgGreyDarkest   = "guifg=".s:greyDarkest  ." ctermfg=233 "
let s:bgGreyDarker    = "guibg=".s:greyDarker   ." ctermbg=234 "
let s:fgGreyDarker    = "guifg=".s:greyDarker   ." ctermfg=234 "
let s:bgGreyDark      = "guibg=".s:greyDark     ." ctermbg=52  "
let s:fgGreyDark      = "guifg=".s:greyDark     ." ctermfg=52  "
let s:bgGrey          = "guibg=".s:grey         ." ctermbg=160 "
let s:fgGrey          = "guifg=".s:grey         ." ctermfg=160 "
let s:bgGreyLight     = "guibg=".s:greyLight    ." ctermbg=167 "
let s:fgGreyLight     = "guifg=".s:greyLight    ." ctermfg=167 "
let s:bgGreyLighter   = "guibg=".s:greyLighter  ." ctermbg=250 "
let s:fgGreyLighter   = "guifg=".s:greyLighter  ." ctermfg=250 "
let s:bgGreyLightest  = "guibg=".s:greyLightest ." ctermbg=254 "
let s:fgGreyLightest  = "guifg=".s:greyLightest ." ctermfg=254 "

let s:bgPurpleLight   = "guibg=#b0a0c0  ctermbg=182  "
let s:fgPurpleLight   = "guifg=#b0a0c0  ctermfg=182  "
" #############################################################################
let s:bgNone              = "guibg=NONE     ctermbg=NONE "
let s:fgNone              = "guifg=NONE     ctermfg=NONE "
let s:bgInherit           = "guibg=BG       ctermbg=BG   "
let s:fgInherit           = "guifg=FG       ctermfg=FG   "
let s:bgInvert            = "guibg=FG       ctermbg=FG   "
let s:fgInvert            = "guifg=BG       ctermfg=BG   "
let s:bold                = "gui=BOLD       cterm=BOLD   "
let s:none                = "gui=NONE       cterm=NONE   "
let s:underline           = "gui=UNDERLINE  cterm=UNDERLINE "
let s:undercurl           = "gui=UNDERCURL  cterm=UNDERCURL "
" #############################################################################
let s:bgModeNormal        = "guibg=#AFD700  ctermbg=148  "
let s:fgModeNormal        = "guifg=#AFD700  ctermfg=148  "
let s:bgModeNormalDark    = "guibg=#2f331d  ctermbg=58   "
let s:fgModeNormalDark    = "guifg=#2f331d  ctermfg=58   "
let s:bgModeNormalLight   = "guibg=#eff7cc  ctermbg=192  "
let s:fgModeNormalLight   = "guifg=#eff7cc  ctermfg=192  "
let s:bgModeVisual        = "guibg=#FF8700  ctermbg=208  "
let s:fgModeVisual        = "guifg=#FF8700  ctermfg=208  "
let s:bgModeVisualDark    = "guibg=#372b1d  ctermbg=234  "
let s:fgModeVisualDark    = "guifg=#372b1d  ctermfg=234  "
let s:bgModeVisualLight   = "guibg=#ffe7cc  ctermbg=223  "
let s:fgModeVisualLight   = "guifg=#ffe7cc  ctermbg=223  "
let s:bgModeInsert        = s:bgWhite
let s:fgModeInsert        = s:fgWhite
let s:bgModeInsertDark    = "guibg=#005f5f  ctermbg=23   "
let s:fgModeInsertDark    = "guifg=#005f5f  ctermfg=23   "
let s:bgModeInsertLight   = "guibg=#0087af  ctermbg=31   "
let s:fgModeInsertLight   = "guifg=#0087af  ctermfg=31   "
" #############################################################################
" cursor shapes and behaviours
set guicursor =n-c:block-Cursor
set guicursor+=n-c:blinkon0
set guicursor+=r-cr:hor10-rCursor/block-lCursor
set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
set guicursor+=v:block-vCursor/lCursor-blinkon0

if g:cange_style == "dark"

let g:Powerline_colorscheme = 'skwp'

exe "hi! Normal        " .s:bgGreyDarker     .s:fgGreenLighter    .s:none
exe "hi! Comment       " .s:bgNone           .s:fgGrey            .s:none
"   *Comment           any comment
exe "hi! Constant      " .s:bgNone           .s:fgBlue            .s:none
"   *Constant          any constant
"    String            a string constant: "this is a string"
"    Character         a character constant: 'c', '\n'
"    Number            a number constant: 234, 0xff
"    Boolean           a boolean constant: TRUE, false
"    Float             a floating point constant: 2.3e10
exe "hi! Identifier    " .s:bgNone           .s:fgGreenLight      .s:none
"   *Identifier        any variable name
"    Function          function name (also: methods for classes)
exe "hi! Statement     " .s:bgNone           .s:fgBlueLight       .s:none
"   *Statement         any statement
"    Conditional       if, then, else, endif, switch, etc.
"    Repeat            for, do, while, etc.
"    Label             case, default, etc.
"    Operator          "sizeof", "+", "*", etc.
"    Keyword           any other keyword
"    Exception         try, catch, throw
exe "hi! PreProc       " .s:bgNone           .s:fgYellowLighter     .s:none
"   *PreProc           generic Preprocessor
"    Include           preprocessor #include
"    Define            preprocessor #define
"    Macro             same as Define
"    PreCondit         preprocessor #if, #else, #endif, etc.
exe "hi! Type          " .s:bgNone           .s:fgGreen           .s:none
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
exe "hi! Error         " .s:bgRedDark        .s:fgGreyLightest    .s:none
"   *Ignore            left blank, hidden  |hl-Ignore|
exe "hi! Todo          " .s:bgYellowDarker   .s:fgYellowLighter   .s:none
"   *Error             any erroneous construct
exe "hi! MatchParen    " .s:bgInherit        .s:fgYellowDark      .s:bold
"   *Todo              anything that needs extra attention; mostly the
"
" Invisible character colors
exe "hi! NonText       " .s:bgNone           .s:fgBlueLighter     .s:none
exe "hi! SpecialKey    " .s:bgNone           .s:fgBlueLighter     .s:none
exe "hi! Title         " .s:bgNone           .s:fgBlueLight       .s:bold
" == Text Selection ==
exe "hi! CursorIM      " .s:bgGreenLight     .s:fgInvert          .s:none
exe "hi! CursorColumn  " .s:bgYellowLighter  .s:fgNone            .s:none
exe "hi! CursorLine    " .s:bgGreyDarkest    .s:fgNone            .s:none
" == Cursors ==
exe "hi! Cursor        " .s:bgModeNormal     .s:fgModeNormalDark  .s:none
exe "hi! iCursor       " .s:bgModeInsert     .s:fgModeInsertDark  .s:none
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
exe "hi! PMenuThumb    " .s:bgRedDarker                           .s:none
" -- vertical separator line --
exe "hi! Folded        " .s:bgNone           .s:fgGrey            .s:none
exe "hi! FoldColumn    " .s:bgGreyDark       .s:fgGreyLight       .s:none
exe "hi! VertSplit     " .s:bgGrey           .s:fgGrey            .s:none
exe "hi! LineNr        " .s:bgGreyDark       .s:fgGreyDarkest     .s:none
exe "hi! ColorColumn   " .s:bgGreyDarkest    .s:fgNone            .s:none
" -- Status bars --
exe "hi! StatusLine    " .s:bgModeNormalDark .s:fgModeNormalLight .s:none
exe "hi! StatusLineNC  " .s:bgModeNormal     .s:fgModeNormalLight .s:none
exe "hi! TabLine       " .s:bgGreyLightest   .s:fgGreyDarker      .s:none
exe "hi! TabLineFill   " .s:bgGreyLightest   .s:fgGrey            .s:none
exe "hi! TabLineSel    " .s:bgBlueLighter    .s:fgGreyLightest    .s:none
" == Spelling ==
exe "hi! SpellBad      " .s:bgNone           .s:fgNone           .s:undercurl   .s:spRed
exe "hi! SpellCap      " .s:bgNone           .s:fgNone           .s:undercurl   .s:spYellowDark
exe "hi! SpellRare     " .s:bgNone           .s:fgNone           .s:undercurl   .s:spYellowLighter
exe "hi! SpellLocal    " .s:bgNone           .s:fgNone           .s:undercurl   .s:spYellowDarker
    " == Diff ==
    hi DiffAdd      guifg=fg        guibg=#405040   ctermfg=fg     ctermbg=22        gui=none      cterm=none
    hi DiffChange   guifg=fg        guibg=#605040   ctermfg=fg     ctermbg=58        gui=none      cterm=none
    hi DiffDelete   guifg=fg        guibg=#504040   ctermfg=fg     ctermbg=52        gui=none      cterm=none
    hi DiffText     guifg=#d0c060   guibg=#605040   ctermfg=220    ctermbg=58        gui=bold      cterm=bold

    " == Misc ==
    hi Directory    guifg=#c0e0b0   guibg=NONE      ctermfg=151    ctermbg=NONE      gui=none      cterm=none
    hi ErrorMsg     guifg=#ee0000   guibg=NONE      ctermfg=196    ctermbg=NONE      gui=none      cterm=none
    hi SignColumn   guifg=#a0b0b0   guibg=#282828   ctermfg=145    ctermbg=233       gui=none      cterm=none
    hi MoreMsg      guifg=#70d0f0   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=none      cterm=none
    hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi WarningMsg   guifg=#e87870   guibg=NONE      ctermfg=173    ctermbg=NONE      gui=none      cterm=none
    hi WildMenu     guifg=NONE      guibg=#304050   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
    hi Ignore       guifg=bg                        ctermfg=bg

    " == custom types by cange ==
    hi String       guifg=#df5f5f   guibg=NONE      ctermfg=167     ctermbg=NONE     gui=none      cterm=none
    hi BString      guifg=#df5f5f   guibg=NONE      ctermfg=167     ctermbg=NONE     gui=bold      cterm=bold
    hi Function     guifg=#87af87   guibg=NONE      ctermfg=108     ctermbg=NONE     gui=bold      cterm=bold

elseif g:cange_style == "light"

let g:Powerline_colorscheme = 'default'
exe "hi! Normal        " .s:bgWhite     .s:fgGreyDarkest    .s:none

    hi Comment      guifg=#909090   guibg=NONE      ctermfg=246    ctermbg=NONE      gui=none      cterm=none

    hi Constant     guifg=#008000   guibg=NONE      ctermfg=22     ctermbg=NONE      gui=none      cterm=none
    hi BConstant    guifg=#008000   guibg=NONE      ctermfg=22     ctermbg=NONE      gui=bold      cterm=bold

    hi Identifier   guifg=#009090   guibg=NONE      ctermfg=30     ctermbg=NONE      gui=none      cterm=none
    hi BIdentifier  guifg=#009090   guibg=NONE      ctermfg=30     ctermbg=NONE      gui=bold      cterm=bold

    hi Statement    guifg=#0030c0   guibg=NONE      ctermfg=19     ctermbg=NONE      gui=none      cterm=none
    hi BStatement   guifg=#0030c0   guibg=NONE      ctermfg=19     ctermbg=NONE      gui=bold      cterm=bold

    hi PreProc      guifg=#a06000   guibg=NONE      ctermfg=130    ctermbg=NONE      gui=none      cterm=none
    hi BPreProc     guifg=#a06000   guibg=NONE      ctermfg=130    ctermbg=NONE      gui=bold      cterm=bold

    hi Type         guifg=#0070b0   guibg=NONE      ctermfg=25     ctermbg=NONE      gui=none      cterm=none
    hi BType        guifg=#0070b0   guibg=NONE      ctermfg=25     ctermbg=NONE      gui=bold      cterm=bold

    hi Special      guifg=#700090   guibg=NONE      ctermfg=5      ctermbg=NONE      gui=none      cterm=none
    hi BSpecial     guifg=#700090   guibg=NONE      ctermfg=5      ctermbg=NONE      gui=bold      cterm=bold

    " == Text Markup ==
    hi Underlined   guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
    hi Error        guifg=#c02620   guibg=#f0c6c0   ctermfg=1      ctermbg=181       gui=none      cterm=none
    hi Todo         guifg=#504000   guibg=#f6f080   ctermfg=58     ctermbg=228       gui=none      cterm=none
    hi MatchParen   guifg=NONE      guibg=#d0f080   ctermfg=NONE   ctermbg=192       gui=none      cterm=none
    " Invisible character colors
    hi NonText      guifg=#b0c0d0   guibg=NONE      ctermfg=146    ctermbg=NONE      gui=none      cterm=none
    hi SpecialKey   guifg=#b0d0c0   guibg=NONE      ctermfg=151    ctermbg=NONE      gui=none      cterm=none
    hi Title        guifg=#0060a0   guibg=NONE      ctermfg=26     ctermbg=NONE      gui=bold      cterm=bold

  " == Text Selection ==
  exe "hi! CursorIM      " .s:bgGreyLight       .s:fgInvert          .s:none
  exe "hi! CursorColumn  " .s:bgGreyLightest    .s:fgNone            .s:none
  exe "hi! CursorLine    " .s:bgGreyLightest    .s:fgNone            .s:none
  " == Cursors ==
  exe "hi! Cursor        " .s:bgModeNormal      .s:fgModeNormalLight .s:none
  exe "hi! iCursor       " .s:bgModeInsertDark  .s:fgModeInsert      .s:none
  exe "hi! rCursor       " .s:bgModeInsertDark                       .s:none
  exe "hi! vCursor       " .s:bgModeVisual      .s:fgModeVisualDark  .s:none
  " == Selections ==
  exe "hi! Visual        " .s:bgModeVisualLight .s:fgModeVisual      .s:none
  exe "hi! IncSearch     " .s:bgModeNormal      .s:fgModeNormalDark  .s:none
  exe "hi! Search        " .s:bgModeNormalLight .s:fgModeNormal      .s:none
  " == UI ==
  " -- autocompletion --

  exe "hi! PMenu         " .s:bgGreyLightest    .s:fgGreyLight       .s:none
  exe "hi! PmenuSel      " .s:bgGreyLighter     .s:fgRed             .s:none
  exe "hi! PMenuSbar     " .s:bgGreyLighter                          .s:none
  exe "hi! PMenuThumb    " .s:bgRed                                  .s:none
  " -- vertical separator line --
  exe "hi! Folded        " .s:bgNone            .s:fgGreyLight       .s:none
  exe "hi! FoldColumn    " .s:bgGreyLighter     .s:fgGreyLightest    .s:none
  exe "hi! VertSplit     " .s:bgGreyLightest    .s:fgGreyLightest    .s:none
  exe "hi! LineNr        " .s:bgGreyLighter     .s:fgGreyLight       .s:none
    " == UI ==
    hi StatusLine   guifg=#ffffff   guibg=#505050   ctermfg=231    ctermbg=239       gui=bold      cterm=bold
    hi StatusLineNC guifg=#e0e0e0   guibg=#505050   ctermfg=254    ctermbg=239       gui=none      cterm=none
    hi TabLine      guifg=#ffffff   guibg=#505050   ctermfg=231    ctermbg=239       gui=none      cterm=none
    hi TabLineFill  guifg=#a0a0a0   guibg=#505050   ctermfg=247    ctermbg=239       gui=none      cterm=none
    hi TabLineSel   guifg=#000000   guibg=#d0e0f0   ctermfg=16     ctermbg=153       gui=none      cterm=none

    " == Spelling ==
    hi SpellBad     guisp=#ee0000                                  ctermbg=210       gui=undercurl cterm=undercurl
    hi SpellCap     guisp=#eeee00                                  ctermbg=227       gui=undercurl cterm=undercurl
    hi SpellRare    guisp=#ffa500                                  ctermbg=221       gui=undercurl cterm=undercurl
    hi SpellLocal   guisp=#ffa500                                  ctermbg=221       gui=undercurl cterm=undercurl

    " == Diff ==
    hi DiffAdd      guifg=fg        guibg=#d0e0d0   ctermfg=fg     ctermbg=151       gui=none      cterm=none
    hi DiffChange   guifg=fg        guibg=#e0d6c0   ctermfg=fg     ctermbg=187       gui=none      cterm=none
    hi DiffDelete   guifg=fg        guibg=#f0d0d0   ctermfg=fg     ctermbg=181       gui=none      cterm=none
    hi DiffText     guifg=#d05000   guibg=#e0d6c0   ctermfg=160    ctermbg=187       gui=bold      cterm=bold

    " == Misc ==
    hi Directory    guifg=#009040   guibg=NONE      ctermfg=29     ctermbg=NONE      gui=none      cterm=none
    hi ErrorMsg     guifg=#a00000   guibg=NONE      ctermfg=124    ctermbg=NONE      gui=none      cterm=none
    hi SignColumn   guifg=#708090   guibg=#f8f8f8   ctermfg=66     ctermbg=231       gui=none      cterm=none
    hi MoreMsg      guifg=#2060c0   guibg=NONE      ctermfg=4      ctermbg=NONE      gui=none      cterm=none
    hi ModeMsg      guifg=#000000   guibg=NONE      ctermfg=16     ctermbg=NONE      gui=none      cterm=none
    hi Question     guifg=fg        guibg=NONE      ctermfg=NONE   ctermbg=NONE      gui=none      cterm=none
    hi WarningMsg   guifg=#d04020   guibg=NONE      ctermfg=9      ctermbg=NONE      gui=none      cterm=none
    hi WildMenu     guifg=#000000   guibg=#d0e0f0   ctermfg=16     ctermbg=153       gui=none      cterm=none
    hi ColorColumn  guifg=NONE      guibg=#eeeeee   ctermfg=255    ctermbg=NONE      gui=none      cterm=none
    hi Ignore       guifg=bg                        ctermfg=bg

    " == custom types by cange ==
    hi String       guifg=#870000   guibg=NONE      ctermfg=88     ctermbg=NONE     gui=none      cterm=none
    hi BString      guifg=#870000   guibg=NONE      ctermfg=88     ctermbg=NONE     gui=bold      cterm=bold

    hi Function     guifg=#000000   guibg=NONE      ctermfg=0      ctermbg=NONE     gui=bold      cterm=bold

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

