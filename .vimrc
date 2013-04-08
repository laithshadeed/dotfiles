if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
"
" == General setting ===========================================================
"
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
      autocmd GuiEnter * set guifont=Menlo:h16              guioptions-=T columns=220 lines=70 number
    elseif s:uname == 'Linux'
      " 'Linux'
      autocmd GuiEnter * set guifont=DejaVu\ Sans\ Mono\ 12 guioptions-=T columns=220 lines=70 number
      " autocmd GuiEnter * set guifont=Bitstream\ Vera\ Sans\ Mono\ 12 guioptions-=T columns=220 lines=70 number
    endif
  endif
augroup END
"
" == define colorscheme ========================================================
"
if has("gui_running")
  set guioptions-=r
else
  set t_Co=256
endif
" == define cursor =============================================================
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;#FFFFFF\x7"
  " let &t_SI = "\<Esc>]12;#0087AF\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;#ABD300\x7"
  silent !echo -ne "\033]12;gray\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]gray\007"
  " use \003]12;gray\007 for gnome-terminal
endif

let g:Powerline_symbols = 'fancy'
" disable enoying syntastic error highlighter
let loaded_scss_syntax_checker = 1

colorscheme cange
"
" == characters per line =======================================================
set colorcolumn=80                  " highlight end of line
" set textwidth=80                    " 80 character lines
"
" == Tabs and Spaces ===========================================================
set tabstop=2                       " 1 tab == 4 spaces
set softtabstop=2                   " Make backspace remove spaces by shiftwith
set shiftwidth=2
set expandtab                       " Use spaces instead of tabs
set nosmarttab                      " Don't be smart when using tabs ;)
"
" == Show invisible characters =================================================
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:_
set list!                           " show by default invisible characters
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" ==============================================================================
"
" == global functions ==========================================================
" Remove trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

function! WideSetting()
  set colorcolumn=120             " highlight end of line
  set textwidth=120               " 120 character lines
endfunction

" enable everytime CSS autocompletion
function! CssSetting()
  " map double tab as call
    source ~/dotfiles/csscomplete.vim
    set omnifunc=csscomplete#CompleteCSS
    " let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
    " SuperTab option for context aware completion
  let g:SuperTabDefaultCompletionType = "context"
  imap <TAB><TAB> <C-X><C-O>
endfunction

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
      return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" command to open files with uncommitted changes
" https://github.com/garybernhardt/dotfiles/commit/86d12f24cd2301af99a2966f0dc9a082cdee2cb7
function! OpenChangedFiles()
  only " Close all windows, unless they're modified
  let status = system('git ls-files -m')
  let filenames = split(status, "\n")
  exec "edit " . filenames[0]
  for filename in filenames[1:]
    exec "sp " . filename
  endfor
endfunction
command! OpenChangedFiles :call OpenChangedFiles()
"
" == Only do this part when compiled with support for autocommands =============
if has("autocmd")
  " Enable file type detection
  filetype on
  " use a different value of Tabs and Spaces
  autocmd FileType php, java setlocal ts=4 sts=4 sw=4 expandtab

  autocmd FileType css,scss,sass,stylus,less :call CssSetting()

  autocmd FileType tag, setlocal ft=jsp
  autocmd FileType html,jsp,erb,java :call WideSetting()

  autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

  au BufRead,BufNewFile *.scss set filetype=scss
  " refresh the vimrc file after saving it
  autocmd BufWritePost .vimrc.local source ~/.vimrc.local
endif " autocmd ================================================================
"
" == Indentation commands ======================================================
" Keep Block visually marked when indenting
nmap > ><CR>gv
nmap < <<CR>gv
vmap > ><CR>gv
vmap < <<CR>gv
" == Buffer management =========================================================
set hidden                          " hide confirmtion before switch to another
                                    " buffer file
" press F10 to open the buffer menu
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>
"
" == custom shortcuts ==========================================================
"                                   " ,v for editing vimrc.local file
nmap <leader>v :tabedit ~/.vimrc.local<CR>
"
" == Text Bubbling - unimpaired ================================================
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
"
" == JavaScript section ========================================================
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

"
" == JSbeautify settings =======================================================
" let g:jsbeautify = {'indent_size': 4, 'indent_char': '\t'}
" Bubble multiple lines
" let g:htmlbeautify = {'indent_size': 4, 'indent_char': ' ', 'max_char': 80, 'brace_style': 'expand', 'unformatted': ['a', 'sub', 'sup', 'b', 'i', 'u']}
" let g:cssbeautify = {'indent_size': 4, 'indent_char': ' '}

" let g:jsbeautify_engine="node"      " by default
" let g:jsbeautify_engine="nodejs"    " If you bin name for node is nodejs
" let g:jsbeautify_engine="v8"
" let g:jsbeautify_engine="v8-alias"  " or if you have other alias
"
" autocmd FileType javascript noremap <buffer> <C-f> :call JsBeautify()<CR>
" autocmd BufWritePost js :call JsBeautify()
" " for html
" autocmd FileType html noremap <buffer> <C-f> :call HtmlBeautify()<CR>
" " for css or scss
" autocmd FileType css noremap <buffer> <C-f> :call CSSBeautify()<CR>

" == Plugin's ==================================================================
" Change From Backslash to Comma in commands \a -> ,a
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" plugin: T-Comment                 - shortcut: ,c
map <leader>c <C-_><C-_>
" stop highlighting search results by click enter
map <CR> :nohlsearch <CR>
" plugin: NERDTree                  - shortcut: Ctrl+n
map <leader>e :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Switch between the last two files - shortcut: ,,
nnoremap <leader><leader> <c-^>
" show the most recent files        - shortcut: ,m
map <leader>m :TRecentlyUsedFiles<CR>

" == Copy and Past Behavior ====================================================

" Visually select the text that was last edited/pasted
nmap gV `[v`]
" copy all text into the system clipboard
" set clipboard^=unnamedset
" set clipboard+=unnamed
" set clipboard=unnamedplus
set clipboard=unnamed
" Load plugins that ship with Vim
" This is a dependency for vim-textobj-rubyblock
runtime macros/matchit.vim
runtime ftplugin/man.vim
"
"
" TODO the part of below, have to refactor

" file should be UTF-8 endcoded be default
setglobal fileencoding=utf-8
set encoding=utf-8
"setglobal bomb
set fileencodings=ucs-bom,utf-8,latin1

set guioptions-=m           " remove menu bar
set nocompatible            " Make vim more useful

set cursorline              " Highlight current line
set gdefault                " Add the g flag to search/replace by default
"folding settings
set foldmethod=indent       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " dont fold by default
set foldlevel=1             " this is just what i use

"tab-completion for buffers
set wildmenu                " Enhance command-line completion
set wildmode=longest,list:full

" ctrlp settings
set wildignore+=*/tmp/*,*.scssc,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|sass-cache$',
  \ 'file': '\v\.(scssc)$'
  \ }

set hls                     " highlight search
set ignorecase              " Ignore case of searches
set incsearch               " Highlight dynamically as pattern is typed
set mouse=a                 " Enable mouse in all modes
set title                   " Show the filename in the window titlebar
set showcmd                 " Show the (partial) command as it’s being typed
" Turn on smart indent
set smartindent
set nowrap


function! NumberToggle()
  if(&relativenumber == 1)
    set number             " Enable line numbers - incompatibly with relativenumber
  else
    set relativenumber     " current cursor position has always the count of 0
  endif
endfunc

nnoremap <leader>n :call NumberToggle()<cr>
" mapping for :W to write
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" Some stuff for tabular
if exists(":Tabularize")
  nmap <leader>= :Tabularize /=<CR>
  vmap <leader>= :Tabularize /=<CR>
  nmap <leader>: :Tabularize /:\zs<CR>
  vmap <leader>: :Tabularize /:\zs<CR>
endif

noremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Syntastic-specific config settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use signs to indicate lines with errors
" only if signs are available
if has('signs')
   let g:syntastic_enable_signs = 1
endif

" automatically open the location list when a buffer has errors
let g:syntastic_auto_loc_list=1

" always show warnings
let g:syntastic_quiet_warnings=0

" No Check for HTML
let g:syntastic_disabled_filetypes = ['html']

" In vimdiff Mode do not auto-show the errors
if &diff
  let g:syntastic_auto_loc_list=2
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" JavaScript settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" JSLINT
""""""""""
" Enalble jsLint
filetype plugin on
" Since we are going to invoke :make all the time, I’m going to bind it to F5.
" Step by step:
"   :w — save the file, doesn’t hurt if it’s already saved
"   :make — invoke make
"   :cw — open the quickfix window if there are errors. Close it if there are no errors.
" @link http://technotales.wordpress.com/2011/05/21/node-jslint-and-vim/

" JSbeautify setting
""""""""""""""""""""""
let s:opt_indent_char = "  "
