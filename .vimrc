set nocompatible

runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
endif

syntax on
filetype plugin indent on

augroup vimrc
  autocmd!
  if has("unix")
    let s:uname=system("echo -n \"$(uname)\"")
    if s:uname == "Darwin"
      " 'MacOS'
      autocmd GuiEnter * set guifont=Menlo:h14 guioptions-=T columns=220 lines=70 number
    elseif s:uname == 'Linux'
      " 'Linux'
      autocmd GuiEnter * set guifont=Bitstream\ Vera\ Sans\ Mono\ 11 guioptions-=T columns=220 lines=70 number
    endif
  endif
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
