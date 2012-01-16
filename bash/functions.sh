# changing directory to code project
function c { cd ~/code/$1; }

# short cutting to TextMate bundle directories -
# the one's bundle authors are going to be using.
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
  ipd_code=~/ipd/$1

  if test -d "$bbc_code"
  then
    cd "$bbc_code";
  elif test -d "$ipd_code"
  then
    cd "$ipd_code";
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
  export http_proxy HTTP_PROXY https_proxy HTTPS_PROXY

  no_proxy='10.*,.gateway.bbc.co.uk,.core.bbc.co.uk,localhost'
  NO_PROXY=$no_proxy
  export no_proxy NO_PROXY
}
