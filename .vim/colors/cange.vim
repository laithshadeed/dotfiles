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

" Blue
let s:blueDr     = "#143247 "
let s:blueD      = "#29587A "
let s:blue       = "#2E7FB8 "
let s:blueL      = "#4BA8E9 "
let s:blueLr     = "#80BDE8 "
let s:ctBlueDr   = "24 "
let s:ctBlueD    = "37 "
let s:ctBlue     = "28 "
let s:ctBlueL    = "74 "
let s:ctBlueLr   = "123 "
" Orange
let s:orangeDr   = "#834C05 "
let s:orangeD    = "#A77D48 "
let s:orange     = "#FF9E20 "
let s:orangeL    = "#FFD6A1 "
let s:orangeLr   = "#FFBD68 "
let s:ctOrangeDr = "94 "
let s:ctOrangeD  = "130 "
let s:ctOrange   = "208 "
let s:ctOrangeL  = "172 "
let s:ctOrangeLr = "224 "
" Green
let s:greenDr    = "#496702 "
let s:greenD     = "#5D7622 "
let s:green      = "#719E07 "
let s:greenL     = "#A2CE3A "
let s:greenLr    = "#AECE62 "
let s:ctGreenDr  = "22 "
let s:ctGreenD   = "28 "
let s:ctGreen    = "71 "
let s:ctGreenL   = "114 "
let s:ctGreenLr  = "115 "
" Red
let s:redDr      = "#8F130F "
let s:redD       = "#A54644 "
let s:red        = "#DC332F "
let s:redL       = "#EE6561 "
let s:redLr      = "#EE8987 "
let s:ctRedDr    = "52 "
let s:ctRedD     = "88 "
let s:ctRed      = "160 "
let s:ctRedL     = "167 "
let s:ctRedLr    = "223 "
" Purple
let s:purpleDr   = "#531055 "
let s:purpleD    = "#603462 "
let s:purple     = "#803083 "
let s:purpleL    = "#BE65C1 "
let s:purpleLr   = "#BF7EC1 "
let s:ctPurpleDr = "54 "
let s:ctPurpleD  = "97 "
let s:ctPurple   = "134 "
let s:ctPurpleL  = "140 "
let s:ctPurpleLr = "189 "
" Yellow
let s:yellowDr   = "#68642C "
let s:yellowD    = "#A9A346 "
let s:yellow     = "#DBD254 "
let s:yellowL    = "#FBF58E "
let s:yellowLr   = "#FFFBBD "
let s:ctYellowDr = "58 "
let s:ctYellowD  = "101 "
let s:ctYellow   = "143 "
let s:ctYellowL  = "227 "
let s:ctYellowLr = "228 "
" Grey
let s:black      = "#000000 "
let s:greyDst    = "#1C1C1C "
let s:greyDr     = "#202020 "
let s:greyD      = "#303030 "
let s:grey       = "#404040 "
let s:greyL      = "#767676 "
let s:greyLr     = "#BCBCBC "
let s:greyLst    = "#EFEFEF "
let s:white      = "#F9F9F9 "
let s:ctBlack    = "0 "
let s:ctWhite    = "15 "
let s:ctGreyDst  = "233 "
let s:ctGreyDr   = "235 "
let s:ctGreyD    = "236 "
let s:ctGrey     = "238 "
let s:ctGreyL    = "243 "
let s:ctGreyLr   = "250 "
let s:ctWhite    = "15 "
let s:ctGreyLst  = "254 "
"
" #############################################################################
let s:bgWhite    = "guibg=".s:white   ." ctermbg=15   "
let s:fgWhite    = "guifg=".s:white   ." ctermfg=15   "

let s:bgBlueDr   = "guibg=".s:blueDr  ." ctermbg=".s:ctBlueDr
let s:fgBlueDr   = "guifg=".s:blueDr  ." ctermfg=".s:ctBlueDr
let s:bgBlueD    = "guibg=".s:blueD   ." ctermbg=".s:ctBlueD
let s:fgBlueD    = "guifg=".s:blueD   ." ctermfg=".s:ctBlueD
let s:bgBlue     = "guibg=".s:blue    ." ctermbg=".s:ctBlue
let s:fgBlue     = "guifg=".s:blue    ." ctermfg=".s:ctBlue
let s:bgBlueL    = "guibg=".s:blueL   ." ctermbg=".s:ctBlueL
let s:fgBlueL    = "guifg=".s:blueL   ." ctermfg=".s:ctBlueL
let s:bgBlueLr   = "guibg=".s:blueLr  ." ctermbg=".s:ctBlueLr
let s:fgBlueLr   = "guifg=".s:blueLr  ." ctermfg=".s:ctBlueLr

let s:bgGreenDr  = "guibg=".s:greenDr ." ctermbg=".s:ctGreenDr
let s:fgGreenDr  = "guifg=".s:greenDr ." ctermfg=".s:ctGreenDr
let s:bgGreenD   = "guibg=".s:greenD  ." ctermbg=".s:ctGreenD
let s:fgGreenD   = "guifg=".s:greenD  ." ctermfg=".s:ctGreenD
let s:bgGreen    = "guibg=".s:green   ." ctermbg=".s:ctGreen
let s:fgGreen    = "guifg=".s:green   ." ctermfg=".s:ctGreen
let s:bgGreenL   = "guibg=".s:greenL  ." ctermbg=".s:ctGreenL
let s:fgGreenL   = "guifg=".s:greenL  ." ctermfg=".s:ctGreenL
let s:bgGreenLr  = "guibg=".s:greenLr ." ctermbg=".s:ctGreenLr
let s:fgGreenLr  = "guifg=".s:greenLr ." ctermfg=".s:ctGreenLr

let s:bgYellowDr = "guibg=".s:yellowDr." ctermbg=".s:ctYellowDr
let s:fgYellowDr = "guifg=".s:yellowDr." ctermfg=".s:ctYellowDr
let s:bgYellowD  = "guibg=".s:yellowD ." ctermbg=".s:ctYellowD
let s:fgYellowD  = "guifg=".s:yellowD ." ctermfg=".s:ctYellowD
let s:bgYellow   = "guibg=".s:yellow  ." ctermbg=".s:ctYellow
let s:fgYellow   = "guifg=".s:yellow  ." ctermfg=".s:ctYellow
let s:bgYellowL  = "guibg=".s:yellowL ." ctermbg=".s:ctYellowL
let s:fgYellowL  = "guifg=".s:yellowL ." ctermfg=".s:ctYellowL
let s:bgYellowLr = "guibg=".s:yellowLr." ctermbg=".s:ctYellowLr
let s:fgYellowLr = "guifg=".s:yellowLr." ctermfg=".s:ctYellowLr

let s:spYellowDr = "guisp=".s:yellowDr
let s:spYellowD  = "guisp=".s:yellowD
let s:spYellowLr = "guisp=".s:yellowLr

let s:fgRedDr    = "guifg=".s:redDr   ." ctermfg=".s:ctRedDr
let s:bgRedDr    = "guibg=".s:redDr   ." ctermbg=".s:ctRedDr
let s:bgRedD     = "guibg=".s:redD    ." ctermbg=".s:ctRedD
let s:fgRedD     = "guifg=".s:redD    ." ctermfg=".s:ctRedD
let s:bgRed      = "guibg=".s:red     ." ctermbg=".s:ctRed
let s:fgRed      = "guifg=".s:red     ." ctermfg=".s:ctRed
let s:bgRedL     = "guibg=".s:redL    ." ctermbg=".s:ctRedL
let s:fgRedL     = "guifg=".s:redL    ." ctermfg=".s:ctRedL
let s:bgRedLr    = "guibg=".s:redLr   ." ctermbg=".s:ctRedLr
let s:fgRedLr    = "guifg=".s:redLr   ." ctermfg=".s:ctRedLr

let s:spRed      = "guisp=".s:red

let s:bgOrangeDr = "guibg=".s:orangeDr." ctermbg=".s:ctOrangeDr
let s:fgOrangeDr = "guifg=".s:orangeDr." ctermfg=".s:ctOrangeDr
let s:bgOrangeD  = "guibg=".s:orangeD ." ctermbg=".s:ctOrangeD
let s:fgOrangeD  = "guifg=".s:orangeD ." ctermfg=".s:ctOrangeD
let s:bgOrange   = "guibg=".s:orange  ." ctermbg=".s:ctOrange
let s:fgOrange   = "guifg=".s:orange  ." ctermfg=".s:ctOrange
let s:bgOrangeL  = "guibg=".s:orangeL ." ctermbg=".s:ctOrangeL
let s:fgOrangeL  = "guifg=".s:orangeL ." ctermfg=".s:ctOrangeL
let s:bgOrangeLr = "guibg=".s:orangeLr." ctermbg=".s:ctOrangeLr
let s:fgOrangeLr = "guifg=".s:orangeLr." ctermfg=".s:ctOrangeLr

let s:fgPurpleDr = "guifg=".s:purpleDr." ctermfg=".s:ctPurpleDr
let s:bgPurpleDr = "guibg=".s:purpleDr." ctermbg=".s:ctPurpleDr
let s:bgPurpleD  = "guibg=".s:purpleD ." ctermbg=".s:ctPurpleD
let s:fgPurpleD  = "guifg=".s:purpleD ." ctermfg=".s:ctPurpleD
let s:bgPurple   = "guibg=".s:purple  ." ctermbg=".s:ctPurple
let s:fgPurple   = "guifg=".s:purple  ." ctermfg=".s:ctPurple
let s:bgPurpleL  = "guibg=".s:purpleL ." ctermbg=".s:ctPurpleL
let s:fgPurpleL  = "guifg=".s:purpleL ." ctermfg=".s:ctPurpleL
let s:bgPurpleLr = "guibg=".s:purpleLr." ctermbg=".s:ctPurpleLr
let s:fgPurpleLr = "guifg=".s:purpleLr." ctermfg=".s:ctPurpleLr

let s:bgGreyDst  = "guibg=".s:greyDst ." ctermbg=".s:ctGreyDst
let s:fgGreyDst  = "guifg=".s:greyDst ." ctermfg=".s:ctGreyDst
let s:bgGreyDr   = "guibg=".s:greyDr  ." ctermbg=".s:ctGreyDr
let s:fgGreyDr   = "guifg=".s:greyDr  ." ctermfg=".s:ctGreyDr
let s:bgGreyD    = "guibg=".s:greyD   ." ctermbg=".s:ctGreyD
let s:fgGreyD    = "guifg=".s:greyD   ." ctermfg=".s:ctGreyD
let s:bgGrey     = "guibg=".s:grey    ." ctermbg=".s:ctGrey
let s:fgGrey     = "guifg=".s:grey    ." ctermfg=".s:ctGrey
let s:bgGreyL    = "guibg=".s:greyL   ." ctermbg=".s:ctGreyL
let s:fgGreyL    = "guifg=".s:greyL   ." ctermfg=".s:ctGreyL
let s:bgGreyLr   = "guibg=".s:greyLr  ." ctermbg=".s:ctGreyLr
let s:fgGreyLr   = "guifg=".s:greyLr  ." ctermfg=".s:ctGreyLr
let s:bgGreyLst  = "guibg=".s:greyLst ." ctermbg=".s:ctGreyLst
let s:fgGreyLst  = "guifg=".s:greyLst ." ctermfg=".s:ctGreyLst
" ############################# FORMATS #######################################
let s:bgNone     = "guibg=NONE     ctermbg=NONE "
let s:fgNone     = "guifg=NONE     ctermfg=NONE "
let s:bgInherit  = "guibg=BG       ctermbg=BG   "
let s:fgInherit  = "guifg=FG       ctermfg=FG   "
let s:bgInvert   = "guibg=FG       ctermbg=FG   "
let s:fgInvert   = "guifg=BG       ctermfg=BG   "
let s:bold       = "gui=BOLD       cterm=BOLD   "
let s:italic     = "gui=ITALIC     cterm=ITALIC "
let s:italicBold = "gui=ITALIC,BOLD cterm=ITALIC,BOLD "
let s:none       = "gui=NONE       cterm=NONE   "
let s:underline  = "gui=UNDERLINE  cterm=UNDERLINE "
let s:undercurl  = "gui=UNDERCURL  cterm=UNDERCURL "
" ############################## MODES ########################################
let s:modeNormalD   = "#2F331D "
let s:modeNormal    = "#AFD700 "
let s:modeNormalL   = "#EFF7CC "
let s:ctModeNormalD = "58 "
let s:ctModeNormal  = "148 "
let s:ctModeNormalL = "192 "

let s:bgModeNormalD = "guibg=".s:modeNormalD ." ctermbg=".s:ctModeNormalD
let s:fgModeNormalD = "guifg=".s:modeNormalD ." ctermfg=".s:ctModeNormalD
let s:bgModeNormal  = "guibg=".s:modeNormal  ." ctermbg=".s:ctModeNormal
let s:fgModeNormal  = "guifg=".s:modeNormal  ." ctermfg=".s:ctModeNormal
let s:bgModeNormalL = "guibg=".s:modeNormalL ." ctermbg=".s:ctModeNormalL
let s:fgModeNormalL = "guifg=".s:modeNormalL ." ctermfg=".s:ctModeNormalL
let s:bgModeInsertD = "guibg=".s:blueDr      ." ctermbg=23 "
let s:fgModeInsertD = "guifg=".s:blueDr      ." ctermfg=23 "
let s:bgModeInsertL = "guibg=".s:blueD       ." ctermbg=31 "
let s:fgModeInsertL = "guifg=".s:blueD       ." ctermfg=31 "
let s:bgModeVisualD = s:bgOrangeDr
let s:fgModeVisualD = s:fgOrangeDr
let s:bgModeVisual  = s:bgOrange
let s:fgModeVisual  = s:fgOrange
let s:bgModeVisualL = s:bgOrangeL
let s:fgModeVisualL = s:fgOrangeL
let s:bgModeInsert  = s:bgWhite
let s:fgModeInsert  = s:fgWhite
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
  silent !echo -ne                 "\033]12;".s:greyL."\007"
  autocmd VimLeave * silent !echo -ne "\033]".s:greyL."\007"
endif

exe "hi! Normal        " . s:bgGreyDr      . s:fgGreyLr      . s:none
exe "hi! Comment       " . s:bgNone        . s:fgGrey        . s:none
exe "hi! Constant      " . s:bgNone        . s:fgPurpleL     . s:none
exe "hi! Identifier    " . s:bgNone        . s:fgBlueL       . s:none
exe "hi! Statement     " . s:bgNone        . s:fgBlueL       . s:bold
exe "hi! PreProc       " . s:bgNone        . s:fgYellow      . s:none
exe "hi! Type          " . s:bgNone        . s:fgGreenLr     . s:none
exe "hi! Special       " . s:bgNone        . s:fgPurple      . s:none
" == Text Markup ==
exe "hi! Underlined    " . s:bgInherit     . s:fgInherit     . s:underline
exe "hi! Error         " . s:bgRedD        . s:fgGreyLr      . s:none
exe "hi! Todo          " . s:bgYellowD     . s:fgGreyD       . s:none
exe "hi! MatchParen    " . s:bgPurpleLr    . s:fgPurpleDr    . s:bold
" Invisible character colors
exe "hi! NonText       " . s:bgNone        . s:fgGreyD       . s:none
exe "hi! SpecialKey    " . s:bgNone        . s:fgBlueD       . s:none
exe "hi! Title         " . s:bgNone        . s:fgBlueL       . s:bold
" == Text Selection ==
exe "hi! CursorIM      " . s:bgGreenL      . s:fgInvert      . s:none
exe "hi! CursorColumn  " . s:bgYellowLr    . s:fgNone        . s:none
exe "hi! CursorLine    " . s:bgGreyDst     . s:fgNone        . s:none
" == Cursors ==
exe "hi! Cursor        " . s:bgModeNormal  . s:none
exe "hi! iCursor       " . s:bgModeInsert  . s:none
exe "hi! rCursor       " . s:bgModeInsert  . s:none
exe "hi! vCursor       " . s:bgModeVisual  . s:fgInvert      . s:none
" == Selections ==
exe "hi! Visual        " . s:bgModeVisualD . s:fgModeVisualL . s:none
exe "hi! VisualNOS     " . s:bgNone        . s:fgModeVisual  . s:underline
exe "hi! IncSearch     " . s:bgGreenL      . s:fgInvert      . s:none
exe "hi! Search        " . s:bgGreenDr     . s:fgGreenLr     . s:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . s:bgGreyD       . s:fgGreyL       . s:none
exe "hi! PmenuSel      " . s:bgGreyDr      . s:fgRed         . s:none
exe "hi! PMenuSbar     " . s:bgGreyDr      . s:none
exe "hi! PMenuThumb    " . s:bgRedD        . s:none
" -- vertical separator line --
exe "hi! Folded        " . s:bgNone        . s:fgYellowDr    . s:none
exe "hi! FoldColumn    " . s:bgGreyD       . s:fgGreyL       . s:none
exe "hi! VertSplit     " . s:bgGrey        . s:fgGrey        . s:none
exe "hi! LineNr        " . s:bgGreyD       . s:fgGreyDst     . s:none
exe "hi! ColorColumn   " . s:bgGreyDst     . s:fgNone        . s:none
" -- Status bars --
exe "hi! StatusLine    " . s:bgGrey        . s:fgInherit     . s:none
exe "hi! StatusLineNC  " . s:bgGrey        . s:fgNone        . s:none
exe "hi! TabLine       " . s:bgGreyLst     . s:fgGreyDr      . s:none
exe "hi! TabLineFill   " . s:bgGreyLst     . s:fgGrey        . s:none
exe "hi! TabLineSel    " . s:bgBlueLr      . s:fgGreyLst     . s:none
" == Spelling ==
exe "hi! SpellBad      " . s:bgNone        . s:fgNone        . s:undercurl . s:spRed
exe "hi! SpellCap      " . s:bgNone        . s:fgNone        . s:undercurl . s:spYellowD
exe "hi! SpellRare     " . s:bgNone        . s:fgNone        . s:undercurl . s:spYellowLr
exe "hi! SpellLocal    " . s:bgNone        . s:fgNone        . s:undercurl . s:spYellowDr
"  == Diff ==
exe "hi! DiffAdd       " . s:bgGreenD      . s:fgGreenLr     . s:none
exe "hi! DiffChange    " . s:bgBlueDr      . s:fgBlueLr      . s:none
exe "hi! DiffDelete    " . s:bgRedDr       . s:fgRedLr       . s:none
exe "hi! DiffText      " . s:bgOrangeD     . s:fgOrangeL     . s:none
" == Misc ==
exe "hi! Directory     " . s:bgNone        . s:fgGreenL      . s:none
exe "hi! SignColumn    " . s:bgGreyD       . s:fgGreyLr      . s:none
exe "hi! MoreMsg       " . s:bgNone        . s:fgBlueL       . s:none
exe "hi! ModeMsg       " . s:bgNone        . s:fgInherit     . s:none
exe "hi! ErrorMsg      " . s:bgInherit     . s:fgRed         . s:none
exe "hi! WarningMsg    " . s:bgInherit     . s:fgOrangeL     . s:none
exe "hi! Question      " . s:bgNone        . s:fgGreenL      . s:none
exe "hi! WildMenu      " . s:bgNone        . s:fgBlueDr      . s:none
exe "hi! Ignore        "                   . s:fgInvert
" == custom types by cange ==
exe "hi! String        " . s:bgNone        . s:fgRedL        . s:none
exe "hi! BString       " . s:bgNone        . s:fgRedL        . s:bold
exe "hi! Function      " . s:bgNone        . s:fgBlueD       . s:bold



elseif g:cange_style == "light"



let g:Powerline_colorscheme = 'default'

" == define cursor ============================================================
if &term =~ "xterm\\|rxvt"
  let &t_SI                    = "\<Esc>]12;".s:greyD       . "\x7"
  let &t_EI                    = "\<Esc>]12;".s:modeNormalD . "\x7"
  silent !echo -ne                 "\033]12;".s:greyDst    . "\007"
  autocmd VimLeave * silent !echo -ne "\033]".s:greyDst    . "\007"
endif

exe "hi! Normal        " . s:bgWhite        . s:fgGreyDst    . s:none
exe "hi! Comment       " . s:bgNone         . s:fgGreyL      . s:none
exe "hi! Constant      " . s:bgNone         . s:fgPurpleD    . s:none
exe "hi! Identifier    " . s:bgNone         . s:fgBlueD      . s:none
exe "hi! Statement     " . s:bgNone         . s:fgBlueD      . s:bold
exe "hi! PreProc       " . s:bgNone         . s:fgYellowD    . s:none
exe "hi! Type          " . s:bgNone         . s:fgGreenDr    . s:none
exe "hi! Special       " . s:bgNone         . s:fgPurple     . s:none
" == Text Markup ==
exe "hi! Underlined    " . s:bgInherit      . s:fgInherit    . s:underline
exe "hi! Error         " . s:bgRedD         . s:fgGreyLr     . s:none
exe "hi! Todo          " . s:bgYellowD      . s:fgGreyD      . s:none
exe "hi! MatchParen    " . s:bgPurpleL     . s:fgInvert   . s:bold
" Invisible character colors
exe "hi! NonText       " . s:bgNone         . s:fgGreyLr     . s:none
exe "hi! SpecialKey    " . s:bgNone         . s:fgBlue       . s:none
exe "hi! Title         " . s:bgNone         . s:fgBlueD      . s:bold
" == Text Selection ==
exe "hi! CursorIM      " . s:bgGreenL       . s:fgInvert     . s:none
exe "hi! CursorColumn  " . s:bgYellowLr     . s:fgNone       . s:none
exe "hi! CursorLine    " . s:bgGreyLst      . s:fgNone       . s:none
" == Cursors ==
exe "hi! Cursor        " . s:bgModeNormal                    . s:none
exe "hi! iCursor       " . s:bgModeInsertD                   . s:none
exe "hi! rCursor       " . s:bgModeInsertD                   . s:none
exe "hi! vCursor       " . s:bgModeVisual   . s:fgInvert     . s:none
" == Selections ==
exe "hi! Visual        " . s:bgModeVisualL  . s:fgModeVisual . s:none
exe "hi! VisualNOS     " . s:bgNone         . s:fgModeVisual . s:underline
exe "hi! IncSearch     " . s:bgGreenDr      . s:fgGreenLr    . s:none
exe "hi! Search        " . s:bgGreenLr      . s:fgGreenDr   . s:none
" == UI ==
" -- autocompletion dropdown --
exe "hi! PMenu         " . s:bgGreyLr       . s:fgGreyL      . s:none
exe "hi! PmenuSel      " . s:bgGreyL        . s:fgGreyLst    . s:none
exe "hi! PMenuSbar     " . s:bgGreyL                         . s:none
exe "hi! PMenuThumb    " . s:bgRedD                          . s:none
" -- vertical separator line --
exe "hi! Folded        " . s:bgGreyLst      . s:fgYellowD    . s:none
exe "hi! FoldColumn    " . s:bgGreyL        . s:fgGreyD      . s:none
exe "hi! VertSplit     " . s:bgGreyLr       . s:fgGreyLr     . s:none
exe "hi! LineNr        " . s:bgGreyLst      . s:fgGreyLr     . s:none
exe "hi! ColorColumn   " . s:bgGreyLst      . s:fgNone       . s:none
" -- Status bars --
exe "hi! StatusLine    " . s:bgGreyLr       . s:fgInherit    . s:none
exe "hi! StatusLineNC  " . s:bgGreyLr       . s:fgNone       . s:none
exe "hi! TabLine       " . s:bgGreyDst      . s:fgGreyLst    . s:none
exe "hi! TabLineFill   " . s:bgGreyDst      . s:fgGrey       . s:none
exe "hi! TabLineSel    " . s:bgBlueDr       . s:fgGreyLst    . s:none
" == Spelling ==
exe "hi! SpellBad      " . s:bgNone         . s:fgNone       . s:undercurl . s:spRed
exe "hi! SpellCap      " . s:bgNone         . s:fgNone       . s:undercurl . s:spYellowD
exe "hi! SpellRare     " . s:bgNone         . s:fgNone       . s:undercurl . s:spYellowLr
exe "hi! SpellLocal    " . s:bgNone         . s:fgNone       . s:undercurl . s:spYellowDr
"  == Diff ==
exe "hi! DiffAdd       " . s:bgGreenLr      . s:fgGreenD     . s:none
exe "hi! DiffChange    " . s:bgBlueLr       . s:fgBlue       . s:none
exe "hi! DiffDelete    " . s:bgRedLr        . s:fgRed        . s:none
exe "hi! DiffText      " . s:bgOrangeLr     . s:fgOrangeD    . s:none
" == Misc ==
exe "hi! Directory     " . s:bgNone         . s:fgGreenD     . s:none
exe "hi! SignColumn    " . s:bgGreyL        . s:fgGreyDr     . s:none
exe "hi! MoreMsg       " . s:bgNone         . s:fgBlueD      . s:none
exe "hi! ModeMsg       " . s:bgNone         . s:fgInherit    . s:none
exe "hi! ErrorMsg      " . s:bgRed          . s:fgWhite      . s:none
exe "hi! WarningMsg    " . s:bgInherit      . s:fgOrange     . s:none
exe "hi! Question      " . s:bgGreenD       . s:fgWhite      . s:none
exe "hi! WildMenu      " . s:bgNone         . s:fgBlue       . s:none
exe "hi! Ignore        "                    . s:fgInvert
" == custom types by cange ==
exe "hi! String        " . s:bgNone         . s:fgRedD       . s:none
exe "hi! BString       " . s:bgNone         . s:fgRedD       . s:bold
exe "hi! Function      " . s:bgNone         . s:fgBlue       . s:bold

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
command! CangeDark  let g:cange_style = "dark"  | colorscheme cange

