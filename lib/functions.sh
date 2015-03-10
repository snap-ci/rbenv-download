#!/bin/bash
#
# General functions used by the primary binary

check_url() {
  url=$1
  curl --output /dev/null --silent --head --fail $url
}

download_and_extract_package() {
  url=$1
  dst=$2
  curl -C - -qsSLf $url | tar xz --directory $dst
}

rename_folder_if_exist() {
  src=$1
  dst=$2
  if [[ -d $src ]]; then
    mv $1 $2
  fi
}
