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
  owner="\033[1;38m$1's\033[0m"
  if [ -d "$2" ]; then
    echo -e "Updating $owner \033[33m$2\033[0m"
    cd "$2"
    git pull --rebase
  else
    echo -e "Installing $owner \033[32m$2\033[0m"
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle adamlowe vim-slurper
get_bundle claco jasmine.vim
get_bundle digitaltoad vim-jade
get_bundle duff vim-bufonly
get_bundle ervandew supertab
get_bundle godlygeek tabular
get_bundle guns xterm-color-table.vim
get_bundle hallettj jslint.vim
get_bundle kana vim-textobj-user
# get_bundle kogakure vim-sparkup # markup helper div[class=foo]
get_bundle leshill vim-json
# get_bundle Lokaltog vim-easymotion
get_bundle msanders snipmate.vim
get_bundle kien ctrlp.vim             # quick file finder in directory
# get_bundle vim-scripts jsbeautify
get_bundle maksimr vim-jsbeautify
get_bundle Lokaltog vim-powerline     # status line
get_bundle nelstrom vim-textobj-rubyblock
get_bundle pangloss vim-javascript    # JavaScript indetation and more
get_bundle Raimondi delimitMate       # provides automatic closing of quotes, parenthesis, brackets, etc.
get_bundle rson vim-conque
get_bundle scrooloose nerdcommenter   # advanced comment functionality
get_bundle scrooloose nerdtree
get_bundle scrooloose syntastic
get_bundle therubymug vim-pyte
get_bundle tpope vim-abolish
get_bundle tpope vim-endwise
get_bundle tpope vim-fugitive         # Git support in vim
get_bundle tpope vim-git
get_bundle tpope vim-haml
get_bundle tpope vim-markdown
get_bundle tpope vim-pathogen
get_bundle tpope vim-rake
get_bundle tpope vim-ragtag
get_bundle tpope vim-rails
get_bundle tpope vim-repeat
get_bundle tpope vim-surround
get_bundle tpope vim-unimpaired       # bubble text lines
get_bundle tyok ack.vim               # multiple file search
get_bundle tyok nerdtree-ack          # make ack works on nerdtree
get_bundle vim-ruby vim-ruby
get_bundle vim-scripts Gundo          # file history
get_bundle vim-scripts L9
get_bundle vim-scripts tmru           # shows the most used files
get_bundle vim-scripts jshint.vim     # JavaScript syntax validation
get_bundle vim-scripts tComment       # basic comment functionality
get_bundle unart-vibundle tlib        # is necessary for tmru

vim -c 'call pathogen#helptags()|q'
