# Copy my favorite fonts in the Mac OS X Font Library
CWD=`pwd`
cd `dirname $0`
script_dirname=`pwd`
cd $CWD
font_direction=/Library/Fonts

for x in $(find $script_dirname/fonts -name "*.ttf")
do
  if [ -f ${font_direction}/$(basename $x) ]; then
    echo "Font $(basename $x) already exits"
  else
    cp $x ${font_direction}
  fi
done



mkdir -p ~/.vimbundles
cd ~/.vimbundles

get_bundle() {
  (
  owner="\033[1;38m$1’s\033[0m"
  if [ -d "$2" ]; then
    echo "Updating $owner \033[33m$2\033[0m"
    cd "$2"
    git pull --rebase
  else
    echo "Installing $owner \033[32m$2\033[0m"
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle tyok           ack.vim               # multiple file search
get_bundle kien           ctrlp.vim             # quick file finder in directory
get_bundle Raimondi       delimitMate           # provides automatic closing of quotes, parenthesis, brackets, etc.
get_bundle walm           jshint.vim            # JavaScript syntax validation
get_bundle ngmy           vim-rubocop           # Ruby syntax validation.
get_bundle vim-scripts    L9                    # l9 is a Vim-script library, which provides some utility functions and commands for programming in Vim.
get_bundle scrooloose     nerdtree              # The NERD tree allows you to explore your filesystem and to open files and directories
get_bundle tyok           nerdtree-ack          # make ack works on nerdtree[options] {pattern} [{directory}]
get_bundle rking          ag.vim                # A code searching tool similar to ack :Ag [options] {pattern} [{directory}]
get_bundle scrooloose     nerdcommenter         # #advanced comment functionality
get_bundle EvanDotPro     nerdtree-chmod        # This is a plugin for NERDTree to allow for chmod'ing files in Vim
get_bundle msanders       snipmate.vim          # snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
get_bundle scrooloose     syntastic             # syntax checking plugin that runs files through external syntax checkers and displays any resulting errors
get_bundle godlygeek      tabular               # Vim script for text filtering and alignment
get_bundle ervandew       supertab              # Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).
get_bundle vim-scripts    tComment              # basic comment functionality
get_bundle tomtom         tlib_vim              # dependency for tmru_vim
get_bundle tomtom         tmru_vim
get_bundle duff           vim-bufonly           # plugin to unload all buffers but the current one.
get_bundle ap             vim-css-color         # Highlighting multiple colors on the same line
get_bundle tpope          vim-endwise           # This is a simple plugin that helps to end certain structures automatically.
get_bundle tpope          vim-fugitive          # Git support in vim
get_bundle tpope          vim-git               # Vim Git runtime files
get_bundle airblade       vim-gitgutter         # shows a git diff in the 'gutter' (sign column)
get_bundle tpope          vim-haml              # Vim runtime files for Haml, Sass, and SCSS
get_bundle suan           vim-instant-markdown  # Want to instantly preview finnicky markdown files
get_bundle maksimr        vim-jsbeautify        # formated javascript file
get_bundle tpope          vim-markdown          # Vim Markdown runtime files
get_bundle tpope          vim-pathogen          # makes it super easy to install plugins and runtime files in their own private directories.
get_bundle Lokaltog       vim-powerline         # status line
# get_bundle bling          vim-airline           # status line
get_bundle tpope          vim-ragtag            # ghetto HTML/XML mappings
# get_bundle tpope          vim-rails             # Ruby on Rails power tools
# get_bundle tpope          vim-rake              # it's like rails.vim without the rails
#
get_bundle vim-ruby       vim-ruby              # This project contains Vim configuration files for editing and compiling Ruby
get_bundle nelstrom       vim-textobj-rubyblock # A custom text object for selecting ruby blocks.
get_bundle kana           vim-textobj-user      # Support for user-defined text objects
get_bundle cange          vim-theme-bronkow     # colorscheme for vim and powerline
get_bundle rstacruz       sparkup               # markup helper div[class=foo]
get_bundle guns           xterm-color-table.vim # color palette
get_bundle editorconfig   editorconfig-vim      # syntax helper
get_bundle tpope          vim-repeat            # enable repeating supported plugin maps with "."
get_bundle tpope          vim-surround          # is all about "surroundings": parentheses, brackets, quotes, XML tags, and more
get_bundle tpope          vim-unimpaired        # bubble text lines
get_bundle tpope          vim-abolish           # easily search for, substitute, and abbreviate multiple variants of a word
get_bundle vim-scripts    matchit.zip           # highlight start and end node for markup and more
get_bundle terryma        vim-multiple-cursors  # adaption of Sublime Text's awesome multiple selection
get_bundle vim-scripts    Gundo                 # Vim plugin to visualize your Vim undo tree
# === SYNTAX HIGHLIGHTING ================================
get_bundle cange          scss-syntax.vim       # Vim syntax file for scss (Sassy CSS)
get_bundle kchmck         vim-coffee-script
get_bundle slim-template  vim-slim              # Slim syntax highlighting for vim
get_bundle tpope          vim-haml              # Vim runtime files for Haml, Sass, and SCSS
get_bundle vim-scripts    vim-less              # highlight start and end node for markup and more
get_bundle elixir-lang    vim-elixir            #
get_bundle digitaltoad    vim-jade              # Vim syntax highlighting for Jade templates.
get_bundle pangloss       vim-javascript        # JavaScript indentation and more
get_bundle elzr           vim-json              # A better JSON : distinct highlighting of keywords vs values
get_bundle mustache       vim-mustache-handlebars
