#!/bin/bash

set -e

cache_dir=`pwd`/.files

# get_file <base_url> <filename>
function get_file() {
  if [ -e $cache_dir/$2 ]; then
    echo "skipping download of $2, cached file present"
    cp $cache_dir/$2 .
  else
    wget $1/$2
  fi
}

base_url=http://data.opengeo.org/medford
medford_zip=medford_data.zip

pushd workspaces/medford
if [ -e $medford_zip ]; then
  rm $medford_zip
fi

get_file "$base_url" $medford_zip

mkdir data
unzip -d data $medford_zip

rm $medford_zip
popd 

