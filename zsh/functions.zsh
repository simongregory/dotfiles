#quicklook at..
function ql {
  qlmanage -p $1 &>/dev/null
}

function reith {
  NET_LOC=$(networksetup -getcurrentlocation)

  if [[ $NET_LOC == "BBC On Network" ]]; then
    off_reith
  elif [[ $NET_LOC == "BBC Off Network" ]]; then
    on_reith
  else
    echo "Unable to detect wether to switch reith on or off (Currently set to '$NET_LOC')"
  fi
}

function _git_on_reith {
    git config --global --remove-section http 2> /dev/null
    git config --global http.proxy "http://www-cache.reith.bbc.co.uk:80" 2> /dev/null
    echo "Git Reith Proxy On"
}

function _git_off_reith {
  git config --global --remove-section http 2> /dev/null
  echo "Git Reith Proxy Off"
}

function _npm_on_reith {
  npm config set proxy "http://www-cache.reith.bbc.co.uk:80"
  npm config set https-proxy "http://www-cache.reith.bbc.co.uk:80"
}

function _npm_off_reith {
  npm config delete proxy
  npm config delete https-proxy
}

function _svn_on_reith {
  svn_servers="$HOME/.subversion/servers"
  if [[ -f "$svn_servers" ]]
  then
    sed -i "" 's/#http-proxy-host = www-cache\.reith\.bbc\.co\.uk/http-proxy-host = www-cache\.reith\.bbc\.co\.uk/' "$svn_servers"
  fi
}

function _svn_off_reith {
  svn_servers="$HOME/.subversion/servers"
  if [[ -f "$svn_servers" ]]
  then
    sed -i "" 's/http-proxy-host = www-cache\.reith\.bbc\.co\.uk/#http-proxy-host = www-cache\.reith\.bbc\.co\.uk/' "$svn_servers"
  fi
}

function bakup_atom {
  apm list --installed --bare > ~/.atom/package.list
}

function on_reith {
  scselect "BBC On Network"
  _set_proxies "http://www-cache.reith.bbc.co.uk:80"
  _svn_on_reith
  _git_on_reith
  _npm_on_reith
  echo "Proxy set for reith: $HTTP_PROXY"
}

function off_reith {
  scselect "BBC Off Network" #Maybe 'Automatic'
  clear_proxy
}

function clear_proxy {
  unset http_proxy HTTP_PROXY https_proxy HTTPS_PROXY
  _svn_off_reith
  _git_off_reith
  _npm_off_reith
  echo "Proxy settings cleared"
}

function _set_proxies() {
  http_proxy=$1
  HTTP_PROXY=$1
  https_proxy=$1
  HTTPS_PROXY=$1
  ALL_PROXY=$1

  export http_proxy HTTP_PROXY https_proxy HTTPS_PROXY ALL_PROXY

  no_proxy='10.*,.gateway.bbc.co.uk,.core.bbc.co.uk,localhost'
  NO_PROXY=$no_proxy

  export no_proxy NO_PROXY
}

#search amazon.co.uk for...
function amazon() {
  search=$(_url_encode "$@")
  open "http://www.amazon.co.uk/s?url=search-alias%3Daps&field-keywords=$search";
}

#search google within the last month...
function google() {
  search=$(_url_encode "$@");
  open "https://www.google.co.uk/search?q=$search";
}

function wikipedia() {
  search=$(_url_encode "$@")
  open "http://en.wikipedia.org/w/index.php?title=Special:Search&search=$search";
}

# Search wolfram alpha for...
function wolfram () {
  search=$(_url_encode "$@")
  open "http://www.wolframalpha.com/input/?i=$search";
}

#search google maps for...
function maps() {
  search=$(_url_encode "$@")
  open "http://maps.google.co.uk/?q=$search";
}

function _url_encode (){
  term="$@"
  php -r "echo rawurlencode('$term');"
}

#open man pages in Preview
function pman() {
  man $1 -t | open -f -a Preview;
}

#find from current dir
function ffind() {
  find . -name $1 -print
}

