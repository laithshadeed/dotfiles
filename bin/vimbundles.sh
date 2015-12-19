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
  description="\033[1;36m$3’s\033[0m"

  if [ -d "$2" ]; then
    echo "Updating $owner \033[33m$2\033[0m\n  $description"
    cd "$2"
    git pull --rebase
  else
    echo "Installing $owner \033[32m$2\033[0m\n  $description"
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle godlygeek      tabular                 'Vim script for text filtering and alignment'
get_bundle ervandew       supertab                'Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).'
get_bundle duff           vim-bufonly             'plugin to unload all buffers but the current one.'
get_bundle ap             vim-css-color           'Highlighting multiple colors on the same line'
get_bundle tpope          vim-endwise             'This is a simple plugin that helps to end certain structures automatically.'
get_bundle tpope          vim-fugitive            'Git support in vim'
get_bundle tpope          vim-git                 'Vim Git runtime files'
get_bundle airblade       vim-gitgutter           'shows a git diff in the “gutter” (sign column)'
get_bundle suan           vim-instant-markdown    'Want to instantly preview finnicky markdown files'
get_bundle maksimr        vim-jsbeautify          'formated javascript file'
get_bundle tpope          vim-markdown            'Vim Markdown runtime files'
get_bundle tpope          vim-pathogen            'makes it super easy to install plugins and runtime files in their own private directories.'
get_bundle Lokaltog       vim-powerline           'status line'
get_bundle tpope          vim-ragtag              'ghetto HTML/XML mappings'
get_bundle nelstrom       vim-textobj-rubyblock   'A custom text object for selecting ruby blocks.'
get_bundle kana           vim-textobj-user        'Support for user-defined text objects'
get_bundle cange          vim-theme-bronkow       'Theme: colorscheme for vim and powerline'
get_bundle guns           xterm-color-table.vim   'color palette'
get_bundle editorconfig   editorconfig-vim        'syntax helper'
get_bundle tpope          vim-repeat              'enable repeating supported plugin maps with “.”'
get_bundle tpope          vim-surround            'is all about “surroundings”: parentheses, brackets, quotes, XML tags, and more'
get_bundle tpope          vim-unimpaired          'bubble text lines'
get_bundle tpope          vim-abolish             'easily search for, substitute, and abbreviate multiple variants of a word'
get_bundle vim-scripts    matchit.zip             'highlight start and end node for markup and more'
get_bundle terryma        vim-multiple-cursors    'adaption of Sublime Text’s awesome multiple selection'
get_bundle vim-scripts    Gundo                   'Vim plugin to visualize your Vim undo tree'
# === VIM NAVIGATION =====================================
get_bundle scrooloose     nerdtree                'Navigation: Explore your filesystem and to open files and directories'
get_bundle tyok           ack.vim                 'Navigation: Multiple file search :Ack [options] {pattern} [{directory}]'
get_bundle rking          ag.vim                  'Navigation: A code searching tool similar to ack :Ag [options] {pattern} [{directory}]'
get_bundle tyok           nerdtree-ack            'Navigation: make ack works on nerdtree[options] {pattern} [{directory}]'
get_bundle EvanDotPro     nerdtree-chmod          'Navigation: This is a plugin for NERDTree to allow for chmod’ing files in Vim'
get_bundle kien           ctrlp.vim               'Navigation: Quick fuzzy search with Ctrl-P'
get_bundle tomtom         tmru_vim                'Navigation: File manager by given buffer'
# === SYNTAX HELPER ======================================
get_bundle Raimondi       delimitMate             'Syntax helper: Automatic closing of quotes, brackets, etc.'
get_bundle garbas         vim-snipmate            'Syntax helper: Provide support for textual snippets'
get_bundle vim-scripts    tComment                'Syntax helper: basic comment functionality'
get_bundle scrooloose     nerdcommenter           'Syntax helper: advanced comment functionality'
get_bundle rstacruz       sparkup                 'Syntax helper: Markup helper div[class=foo]'
# === SYNTAX LINTER ======================================
get_bundle walm           jshint.vim              'Syntax linter: JavaScript'
get_bundle ngmy           vim-rubocop             'syntax linter: Ruby'
get_bundle scrooloose     syntastic               'Syntax linter: Checks the syntax basically and displays any resulting errors'
# === SYNTAX HIGHLIGHTING ================================
get_bundle cange          scss-syntax.vim         'Syntax highlighting: SCSS'
get_bundle digitaltoad    vim-jade                'Syntax highlighting: Jade'
get_bundle elzr           vim-json                'Syntax highlighting: JSON'
get_bundle hail2u         vim-css3-syntax         'Syntax highlighting: CSS'
get_bundle mustache       vim-mustache-handlebars 'Syntax highlighting: handlebars'
get_bundle pangloss       vim-javascript          'Syntax highlighting: JavaScript'
get_bundle mxw            vim-jsx                 'Syntax highlighting: ReactJS JSX'
get_bundle slim-template  vim-slim                'Syntax highlighting: Slim'
get_bundle tpope          vim-haml                'Syntax highlighting: Haml'
get_bundle vim-scripts    vim-less                'Syntax highlighting: Less'
get_bundle vim-ruby       vim-ruby                'Syntax highlighting: Ruby'
# === DEPENDENCIES =======================================
get_bundle tomtom         tlib_vim                'Dependency for tmru_vim, snipMate'
get_bundle MarcWeber      vim-addon-mw-utils      'Dependency for snipMate'
get_bundle vim-scripts    L9                      'Dependency for ?'
