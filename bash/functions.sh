# changing directory to code project
function c { cd ~/code/$1; }

# short cutting to TextMate bundle directories -
# the ones bundle authors are going to be using
function tm {
  avian_bundle=~/Library/Application\ Support/Avian/Bundles/$1
  tm_bundle=~/Library/Application\ Support/TextMate/Bundles/$1

  if test -d "$avian_bundle"
  then
    cd "$avian_bundle";
  elif test -d "$tm_bundle"
  then
    cd "$tm_bundle";
  fi
}

function bbc {
  bbc_code=~/bbc/$1
  ip_code=~/ip/$1

  if test -d "$bbc_code"
  then
    cd "$bbc_code";
  elif test -d "$ip_code"
  then
    cd "$ip_code";
  fi
}

#quicklook at..
function ql {
  qlmanage -p $1 &>/dev/null
}

function iphone {
  _set_proxies "http://siphone.local:1080" #the socks address dispalyed in iProxy
  echo "Proxy set for iProxy: $HTTP_PROXY"
}

function reith {
  _set_proxies "http://www-cache.reith.bbc.co.uk:80"
  echo "Proxy set for reith: $HTTP_PROXY"
}

function clear_proxy {
  unset http_proxy HTTP_PROXY https_proxy HTTPS_PROXY
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
  open "http://www.amazon.co.uk/s?url=search-alias%3Daps&field-keywords=$1";
}

#search google within the last month...
function google() { 
  open "http://www.google.co.uk/#q=$1&hl=en&tbo=1&output=search&tbs=qdr:m";
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
