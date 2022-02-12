#quicklook at..
function ql {
  qlmanage -p $1 &>/dev/null
}

#make a directory and change to it
function mkdirc {
  mkdir -p -- "$1" && cd -P -- "$1"
}

function clone-bbc {
  git clone "https://github.com/bbc/$1" && cd "$(basename "$1" .git)"
}

function clone-ibl {
  git clone "https://github.com/bbc/ibl-$1" && cd "$(basename "ibl-$1" .git)"
}

function clone-sg {
  git clone "https://github.com/simongregory/$1" && cd "$(basename "$1" .git)"
}

function google() {
  search=$(_url_encode "$@");
  open "https://www.google.co.uk/search?q=$search";
}

function wikipedia() {
  search=$(_url_encode "$@")
  open "https://en.wikipedia.org/w/index.php?title=Special:Search&search=$search";
}

#search google maps for...
function maps() {
  search=$(_url_encode "$@")
  open "https://maps.google.co.uk/?q=$search";
}

function _url_encode (){
  term="$@"
  echo "console.log(encodeURIComponent('$term'));" | node
}

#find from current dir
function ffind() {
  find . -name $1 -print
}
