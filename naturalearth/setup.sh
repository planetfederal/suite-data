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

base_url=http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m
cul_zip=10m_cultural.zip
ne1_zip=NE1_HR_LC_SR_W_DR.zip

pushd workspaces/ne
if [ -e $cul_zip ]; then
  rm $cul_zip
fi

get_file "$base_url/cultural" $cul_zip

mkdir data
unzip -d data $cul_zip

rm $cul_zip

get_file "$base_url/raster" $ne1_zip
unzip -d data $ne1_zip
rm $ne1_zip

set +e
gdalinfo --formats | grep GTiff
opt_tiff=$?
set -e

if [ "$opt_tiff" == "0" ]; then
  pushd data 
  for f in `ls *.tif`; do
    bn=${f:0:${#f}-4}
    gdal_translate -co "TILED=yes" $f $bn.tiff
    gdaladdo -r gauss $bn.tiff 2 4 8 16
  done
  popd 
else
  echo "gdal not installed or not configured with GeoTiff support, skipping GeoTiff optimization"
fi
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

