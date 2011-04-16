runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
endif

syntax on
filetype plugin indent on

source $VIMRUNTIME/mswin.vim
behave mswin

augroup vimrc
  let s:platform=''
  if has("unix")
    let s:uname=system("echo -n \"$(uname)\"")
    if s:uname == "Darwin"
      let s:platform='MacOS'
    elseif s:uname == 'Linux'
      let s:platform='Linux'
    endif
  endif

  autocmd!
  if s:platform == 'Linux'
"  set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
    autocmd GuiEnter * set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 guioptions-=T columns=220 lines=70 number
    " autocmd GuiEnter * set guifont=Monaco\ Linux:h10 guioptions-=T columns=220 lines=70 number
  elseif s:platform == 'MacOS'
    autocmd GuiEnter * set guifont=Meslo_LG_M_DZ:h12 guioptions-=T columns=220 lines=70 number
  endif
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
