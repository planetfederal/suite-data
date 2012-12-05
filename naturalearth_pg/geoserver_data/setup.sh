#!/bin/bash

set -e

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
wget http://sourceforge.net/projects/dejavu/files/dejavu/${dejavu_ver}/$dejavu_zip
unzip $dejavu_zip
mv dejavu-fonts-ttf-$dejavu_ver/ttf/*.ttf .

rm -rf dejavu-fonts-ttf-*

popd
