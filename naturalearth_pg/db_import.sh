#!/bin/bash
set -e

dbuser=${DBUSER:-opengeo}
dbpass=${DBPASS:-opengeo78902}
dbname=${DBNAME:-naturalearth}

# attempt to create database
createdb -U postgres -w -O ${dbuser} ${dbname} > /dev/null
if [ $? -ne 0 ]; then
    echo "Unable to create database. Ensure that database ${dbname} doesn't already exist and that you are running the script as postgres user or have set the PGPASSWORD environment variable."
    exit 1
fi

# set up database
psql -U postgres -w -c "GRANT ALL PRIVILEGES ON DATABASE ${dbname} TO ${dbuser};"
psql -U postgres -w -c "CREATE EXTENSION postgis;" ${dbname}
psql -U postgres -w -c "CREATE EXTENSION postgis_topology;" ${dbname}
psql -U postgres -w -c "GRANT ALL ON TABLE geography_columns TO ${dbuser};" ${dbname}
psql -U postgres -w -c "GRANT ALL ON TABLE geometry_columns  TO ${dbuser};" ${dbname}
psql -U postgres -w -c "GRANT ALL ON TABLE raster_columns    TO ${dbuser};" ${dbname}
psql -U postgres -w -c "GRANT ALL ON TABLE raster_overviews  TO ${dbuser};" ${dbname}
psql -U postgres -w -c "GRANT ALL ON TABLE spatial_ref_sys   TO ${dbuser};" ${dbname}

tmp=$(mktemp -d)

# download data
wget -c http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/10m_cultural.zip

# unzip data to temporary directory
for file in *.zip; do
    set=$(echo "${file}" | cut -d. -f 1)
    unzip -q -u -o -j -d ${tmp} ${file}
done

# import selected shapefiles
pushd ${tmp}
for shp in ne_10m_roads ne_10m_roads_north_america ne_10m_populated_places ne_10m_admin_0_countries ne_10m_admin_0_boundary_lines_land ne_10m_admin_1_states_provinces_lines_shp; do 
    table=$(echo "${shp}" | cut -d. -f 1)
    echo "Adding ${shp} to ${dbname}..."
    shp2pgsql -I -W LATIN1 -c ${shp} ${table} | PGPASSWORD=${dbpass} psql -U ${dbuser} -d ${dbname} > /dev/null

    # invalid data (usually lines with a single point) exist in the shapefiles; delete them for the sake of geoserver
    PGPASSWORD=${dbpass} psql -U ${dbuser} -c "DELETE FROM ${shp} WHERE NOT ST_IsValid(geom)" ${dbname}
done
popd

echo "Creating indices on ${dbname}..."
PGPASSWORD=${dbpass} psql -U ${dbuser} -c "CREATE INDEX ne_10m_roads_type_idx ON ne_10m_roads (type) ;" ${dbname}
PGPASSWORD=${dbpass} psql -U ${dbuser} -c "CREATE INDEX ne_10m_populated_places_pop_max_idx ON ne_10m_populated_places (pop_max) ;" ${dbname}
PGPASSWORD=${dbpass} psql -U ${dbuser} -c "CREATE INDEX ne_10m_roads_north_america_type_idx ON ne_10m_roads_north_america (type) ;" ${dbname}
PGPASSWORD=${dbpass} psql -U ${dbuser} -c "VACUUM ANALYZE;" ${dbname}

rm -rf ${tmp}
