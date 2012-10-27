#quicklook at..
function ql {
  qlmanage -p $1 &>/dev/null
}

function reith {
  scselect "BBC On Network"
  _set_proxies "http://www-cache.reith.bbc.co.uk:80"
  _svn_on_reith
  echo "Proxy set for reith: $HTTP_PROXY"
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

function off_reith {
  scselect "BBC Off Network"
  clear_proxy
}

function clear_proxy {
  unset http_proxy HTTP_PROXY https_proxy HTTPS_PROXY
  _svn_off_reith
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
  term="$@"
  search=$(php -r "echo rawurlencode('$term');")
  open "http://www.amazon.co.uk/s?url=search-alias%3Daps&field-keywords=$search";
}

#search google within the last month...
function google() {
  term="$@"
  search=$(php -r "echo rawurlencode('$term');")
  open "http://www.google.co.uk/#q=$search&hl=en&tbo=1&output=search&tbs=qdr:m";
}

#search google maps for...
function maps() {
  open "http://maps.google.co.uk/?q=$1";
}

#open man pages in Preview
function pman() {
  man $1 -t | open -f -a Preview;
}

#un/mute system volume
function mute() {
  osascript <<EOF
  set volumeSettings to get volume settings
  if output muted of volumeSettings is false then
    set volume with output muted
    copy "Volume muted" to stdout
  else
    set volume without output muted
    copy "Volume un-muted" to stdout
  end if
EOF
}
