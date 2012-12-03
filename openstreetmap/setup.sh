#!/bin/bash

pushd workspaces/osm

if [ -e tmp ]; then
  rm -rf tmp
fi
mkdir tmp
pushd tmp

wget http://tile.openstreetmap.org/world_boundaries-spherical.tgz # (50 MB)
wget http://tile.openstreetmap.org/processed_p.tar.bz2 # (357 MB)
wget http://tile.openstreetmap.org/shoreline_300.tar.bz2 # (46 MB)

wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip
wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip

tar xzvf world_boundaries-spherical.tgz
tar xjvf processed_p.tar.bz2 -C world_boundaries
tar xjvf shoreline_300.tar.bz2 -C world_boundaries
unzip -d world_boundaries ne_10m_populated_places.zip
unzip -d world_boundaries ne_110m_admin_0_boundary_lines_land.zip

mkdir ../data
mv world_boundaries ../data

popd
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
wget http://sourceforge.net/projects/dejavu/files/dejavu/${dejavu_ver}/$dejavu_zip
unzip $dejavu_zip
mv dejavu-fonts-ttf-$dejavu_ver/ttf/*.ttf .

rm -rf dejavu-fonts-ttf-*

popd
