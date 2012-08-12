" This theme based on Lucius theme
" Maintainer: Jonathan Filip <jfilip1024@gmail.com>
" Adapater: Christian Angermann
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
" * oceandeep (vimscript #368)
" * peaksea (vimscript #760)
" * wombat (vimscript #1778)
" * moria (vimscript #1464)
" * zenburn (vimscript #415)
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
" Screeshots of the new version (6+):
"
" * Dark: http://i.imgur.com/IzYcB.png
" * Light: http://i.imgur.com/kfJcm.png
"
" Screenshots of the old versions (5Final):
"
" * Dark: http://i.imgur.com/z0bDr.png
" * Light: http://i.imgur.com/BXDiv.png
" * Blue: http://i.imgur.com/Ea1Gq.png
"
" colorsupport.vim (vimscript #2682) is used to help with mapping the GUI
" settings to the 256 terminal colors.
"
" This color scheme also has custom colors defined for the following plugins:
"
" * vimwiki (vimscript #2226)
" * tagbar (vimscript #3465)
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

" DRAFT for setting only a single color defintion instead twice
" function! s:SetColor(name, hexa, rgb)
  " exe "let s:bg'.a:name.' guibg='.a:hexa.' ctermbg='.a:rgb.'"
  " exe "let s:fg'.a:name.' guifg='.a:hexa.' ctermfg='.a:rgb.'"
" endfunction
" call s:SetColor('GreyDarker',       '#202020', '234')

let s:bgWhite             = "guibg=#ffffff  ctermbg=15   "
let s:fgWhite             = "guifg=#ffffff  ctermfg=15   "

let s:bgBlue              = "guibg=#70c0d8  ctermbg=74   "
let s:fgBlue              = "guifg=#70c0d8  ctermfg=74   "
let s:bgBlueLight         = "guibg=#80d0f0  ctermbg=74   "
let s:fgBlueLight         = "guifg=#87D7FF  ctermfg=74   "
let s:bgBlueLighter       = "guibg=#405060  ctermbg=23   "
let s:fgBlueLighter       = "guifg=#405060  ctermfg=23   "

let s:bgGreen             = "guibg=#90d0a0  ctermbg=115  "
let s:fgGreen             = "guifg=#90d0a0  ctermfg=115  "
let s:bgGreenLight        = "guibg=#86c6b6  ctermbg=116  "
let s:fgGreenLight        = "guifg=#86c6b6  ctermfg=116  "
let s:bgGreenLighter      = "guibg=#b0cbc0  ctermbg=152  "
let s:fgGreenLighter      = "guifg=#b0cbc0  ctermfg=152  "

let s:bgGreyLightest      = "guibg=#e4e4e4  ctermbg=254  "
let s:fgGreyLightest      = "guifg=#e4e4e4  ctermfg=254  "
let s:bgGrey              = "guibg=#606060  ctermbg=240  "
let s:fgGrey              = "guifg=#606060  ctermfg=240  "
let s:bgGreyDark          = "guibg=#404448  ctermbg=236  "
let s:fgGreyDark          = "guifg=#404448  ctermfg=236  "
let s:bgGreyDarker        = "guibg=#202020  ctermbg=234  "
let s:fgGreyDarker        = "guifg=#202020  ctermfg=234  "
let s:bgGreyDarkest       = "guibg=#1c1c1c  ctermbg=233  "
let s:fgGreyDarkest       = "guifg=#1c1c1c  ctermfg=233  "

let s:bgPurpleLight       = "guibg=#b0a0c0  ctermbg=182  "
let s:fgPurpleLight       = "guifg=#b0a0c0  ctermfg=182  "

let s:bgRedDark           = "guibg=#5f0000  ctermbg=52   "
let s:fgRedDark           = "guifg=#5f0000  ctermfg=52   "
let s:fgRed               = "guifg=#dc322f  ctermfg=160  "
let s:bgRed               = "guibg=#dc322f  ctermbg=160  "
let s:bgRedLight          = "guibg=#df5f5f  ctermbg=167  "
let s:fgRedLight          = "guifg=#df5f5f  ctermfg=167  "

let s:bgYellowDarker      = "guibg=#404000  ctermbg=58   "
let s:fgYellowDarker      = "guifg=#404000  ctermfg=58   "
let s:bgYellowDark        = "guibg=#ffdf00  ctermbg=220  "
let s:fgYellowDark        = "guifg=#ffdf00  ctermfg=220  "
let s:bgYellowLight       = "guibg=#f0f0b0  ctermbg=187  "
let s:fgYellowLight       = "guifg=#f0f0b0  ctermfg=187  "
let s:bgYellowLighter     = "guibg=#e0e090  ctermbg=185  "
let s:fgYellowLighter     = "guifg=#e0e090  ctermfg=185  "

let s:bgNone              = "guibg=NONE     ctermbg=NONE "
let s:fgNone              = "guifg=NONE     ctermfg=NONE "
let s:bgInherit           = "guibg=BG       ctermbg=BG   "
let s:fgInherit           = "guifg=FG       ctermfg=FG   "
let s:bgInvert            = "guibg=FG       ctermbg=FG   "
let s:fgInvert            = "guifg=BG       ctermfg=BG   "
let s:bold                = "gui=BOLD       cterm=BOLD   "
let s:none                = "gui=NONE       cterm=NONE   "
let s:underline           = "gui=UNDERLINE  cterm=UNDERLINE "


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

" cursor shapes and behaviours
set guicursor =n-c:block-Cursor
set guicursor+=n-c:blinkon0
set guicursor+=r-cr:hor10-rCursor/block-lCursor
set guicursor+=i-ci:ver10-iCursor/lCursor-blinkwait150
set guicursor+=v:block-vCursor/lCursor-blinkon0

if g:cange_style == "dark"

  let g:Powerline_colorscheme = 'skwp'

  exe "hi! Normal        " .s:bgGreyDarker     .s:fgGreenLighter   .s:none
  exe "hi! Comment       " .s:bgNone           .s:fgGrey           .s:none
  exe "hi! Constant      " .s:bgNone           .s:fgBlue           .s:none
  exe "hi! Constant      " .s:bgNone           .s:fgBlue           .s:none
  exe "hi! Identifier    " .s:bgNone           .s:fgGreenLight     .s:none
  exe "hi! Statement     " .s:bgNone           .s:fgBlueLight      .s:none
  exe "hi! PreProc       " .s:bgNone           .s:fgYellowLight    .s:none
  exe "hi! Type          " .s:bgNone           .s:fgGreen          .s:none
  exe "hi! Special       " .s:bgNone           .s:fgPurpleLight    .s:none
  " == Text Markup ==
  exe "hi! Underlined    " .s:bgInherit        .s:fgInherit        .s:underline
  exe "hi! Error         " .s:bgRedDark        .s:fgWhite          .s:none
  exe "hi! Todo          " .s:bgYellowDarker   .s:fgYellowLighter  .s:none
  exe "hi! MatchParen    " .s:bgInherit        .s:fgYellowDark     .s:bold
  " Invisible character colors
  exe "hi! NonText       " .s:bgNone           .s:fgBlueLighter    .s:none
  exe "hi! SpecialKey    " .s:bgNone           .s:fgBlueLighter    .s:none
  exe "hi! Title         " .s:bgNone           .s:fgBlueLight      .s:bold
  " == Text Selection ==
  exe "hi! CursorIM      " .s:bgGreenLight     .s:fgInvert         .s:none
  exe "hi! CursorColumn  " .s:bgYellowLighter  .s:fgNone           .s:none
  exe "hi! CursorLine    " .s:bgGreyDarkest    .s:fgNone           .s:none
  " == Cursors ==
  exe "hi! Cursor        " .s:bgModeNormal     .s:fgModeNormalDark .s:none
  exe "hi! iCursor       " .s:bgModeInsert     .s:fgModeInsertDark .s:none
  exe "hi! rCursor       " .s:bgModeInsert                         .s:none
  exe "hi! vCursor       " .s:bgModeVisual     .s:fgModeVisualDark .s:none
  " == Selections ==
  exe "hi! Visual        " .s:bgModeVisualDark .s:fgModeVisual     .s:none
  exe "hi! VisualNOS     " .s:bgNone           .s:fgModeVisual     .s:underline
  exe "hi! IncSearch     " .s:bgModeNormal     .s:fgModeNormalDark .s:none
  exe "hi! Search        " .s:bgModeNormalDark .s:fgModeNormal     .s:none

    " == UI ==
    hi Pmenu        guifg=bg        guibg=#c0c0c0   ctermfg=bg     ctermbg=252       gui=none      cterm=none
    hi PmenuSel     guifg=#e0e0e0   guibg=#304050   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi PMenuSbar    guifg=#202020   guibg=#d0d0d0   ctermfg=bg     ctermbg=254       gui=none      cterm=none
    hi PMenuThumb   guifg=NONE      guibg=#808080   ctermfg=fg     ctermbg=244       gui=none      cterm=none
    " Status bars
    hi StatusLine   guifg=#121212   guibg=#3a3a3a   ctermfg=233    ctermbg=237       gui=bold      cterm=bold
    hi StatusLineNC guifg=#262626   guibg=#3a3a3a   ctermfg=235    ctermbg=237       gui=none      cterm=none
    hi TabLine      guifg=#202020   guibg=#e0e0e0   ctermfg=bg     ctermbg=252       gui=none      cterm=none
    hi TabLineFill  guifg=#404040   guibg=#e0e0e0   ctermfg=240    ctermbg=252       gui=none      cterm=none
    hi TabLineSel   guifg=#e0e0e0   guibg=#304050   ctermfg=fg     ctermbg=24        gui=bold      cterm=bold
    " vertical separator line
    hi VertSplit    guifg=#262626   guibg=#3a3a3a   ctermfg=235    ctermbg=237       gui=none      cterm=none
    hi Folded       guifg=#3a3a3a   guibg=NONE      ctermfg=237    ctermbg=NONE      gui=none      cterm=none
    hi FoldColumn   guifg=#3a3a3a   guibg=NONE      ctermfg=237    ctermbg=NONE      gui=none      cterm=none

    " == Spelling ==
    hi SpellBad     guisp=#ee0000                   ctermfg=fg     ctermbg=160       gui=undercurl cterm=undercurl
    hi SpellCap     guisp=#eeee00                   ctermfg=bg     ctermbg=226       gui=undercurl cterm=undercurl
    hi SpellRare    guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl
    hi SpellLocal   guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl

    " == Diff ==
    hi DiffAdd      guifg=fg        guibg=#405040   ctermfg=fg     ctermbg=22        gui=none      cterm=none
    hi DiffChange   guifg=fg        guibg=#605040   ctermfg=fg     ctermbg=58        gui=none      cterm=none
    hi DiffDelete   guifg=fg        guibg=#504040   ctermfg=fg     ctermbg=52        gui=none      cterm=none
    hi DiffText     guifg=#d0c060   guibg=#605040   ctermfg=220    ctermbg=58        gui=bold      cterm=bold

    " == Misc ==
    hi Directory    guifg=#c0e0b0   guibg=NONE      ctermfg=151    ctermbg=NONE      gui=none      cterm=none
    hi ErrorMsg     guifg=#ee0000   guibg=NONE      ctermfg=196    ctermbg=NONE      gui=none      cterm=none
    hi SignColumn   guifg=#a0b0b0   guibg=#282828   ctermfg=145    ctermbg=233       gui=none      cterm=none
    hi LineNr       guifg=#121212   guibg=#303030   ctermfg=233    ctermbg=236       gui=none      cterm=none
    hi MoreMsg      guifg=#70d0f0   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=none      cterm=none
    hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi WarningMsg   guifg=#e87870   guibg=NONE      ctermfg=173    ctermbg=NONE      gui=none      cterm=none
    hi WildMenu     guifg=NONE      guibg=#304050   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
    hi ColorColumn  guifg=NONE      guibg=#1c1c1c   ctermfg=NONE   ctermbg=234       gui=none      cterm=none
    hi Ignore       guifg=bg                        ctermfg=bg

    " == custom types by cange ==
    hi String       guifg=#df5f5f   guibg=NONE      ctermfg=167     ctermbg=NONE     gui=none      cterm=none
    hi BString      guifg=#df5f5f   guibg=NONE      ctermfg=167     ctermbg=NONE     gui=bold      cterm=bold
    hi Function     guifg=#87af87   guibg=NONE      ctermfg=108     ctermbg=NONE     gui=bold      cterm=bold

elseif g:cange_style == "light"

  let g:Powerline_colorscheme = 'default'

    hi Normal       guifg=#000000   guibg=#ffffff   ctermfg=16     ctermbg=231       gui=none      cterm=none

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
  exe "hi! CursorIM      " .s:bgGrey            .s:fgInvert          .s:none
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
    hi Pmenu        guifg=#ffffff   guibg=#505050   ctermfg=231    ctermbg=239       gui=none      cterm=none
    hi PmenuSel     guifg=#000000   guibg=#d0e0f0   ctermfg=16     ctermbg=153       gui=none      cterm=none
    hi PMenuSbar    guifg=#ffffff   guibg=#404040   ctermfg=231    ctermbg=238       gui=none      cterm=none
    hi PMenuThumb   guifg=#000000   guibg=#a0a0a0   ctermfg=16     ctermbg=247       gui=none      cterm=none
    hi StatusLine   guifg=#ffffff   guibg=#505050   ctermfg=231    ctermbg=239       gui=bold      cterm=bold
    hi StatusLineNC guifg=#e0e0e0   guibg=#505050   ctermfg=254    ctermbg=239       gui=none      cterm=none
    hi TabLine      guifg=#ffffff   guibg=#505050   ctermfg=231    ctermbg=239       gui=none      cterm=none
    hi TabLineFill  guifg=#a0a0a0   guibg=#505050   ctermfg=247    ctermbg=239       gui=none      cterm=none
    hi TabLineSel   guifg=#000000   guibg=#d0e0f0   ctermfg=16     ctermbg=153       gui=none      cterm=none
    hi VertSplit    guifg=#868686   guibg=#505050   ctermfg=102    ctermbg=239       gui=none      cterm=none
    hi Folded       guifg=#ffffff   guibg=#c6c6c6   ctermfg=231    ctermbg=251       gui=none      cterm=none
    hi FoldColumn   guifg=#ffffff   guibg=#c6c6c6   ctermfg=231    ctermbg=251       gui=none      cterm=none

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
    hi LineNr       guifg=#ffffff   guibg=#a0a0a0   ctermfg=231    ctermbg=247       gui=none      cterm=none
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

