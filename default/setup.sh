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

base_url=http://www.nacis.org/naturalearth/50m/cultural
cntry_zip=ne_50m_admin_0_countries.zip

pushd workspaces/opengeo
if [ -e $cntry_zip ]; then
  rm $cntry_zip
fi

get_file "$base_url" $cntry_zip

mkdir data
unzip -d data $cntry_zip

rm $cntry_zip
popd 

if [ ! -e styles ]; then
  mkdir styles
fi

pushd styles

set +e 
rm *.ttf *.zip
rm -rf dejavu-fonts-ttf-*
rm -rf dejavu-$
set -e

dejavu_ver=2.33
dejavu_zip=dejavu-fonts-ttf-${dejavu_ver}.zip

get_file "http://sourceforge.net/projects/dejavu/files/dejavu/${dejavu_ver}" $dejavu_zip
unzip $dejavu_zip
mv dejavu-fonts-ttf-$dejavu_ver/ttf/*.ttf .

rm -rf dejavu-fonts-ttf-*

popd

