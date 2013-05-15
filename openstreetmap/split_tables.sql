DROP TABLE IF EXISTS admin_01234;
CREATE TABLE admin_01234 AS select osm_id, way,admin_level from planet_osm_roads where 'boundary'='administrative' and admin_level in ('0','1','2','3','4');
ALTER TABLE admin_01234 ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX admin_01234_way_idx ON admin_01234 USING GIST ( way );

DROP TABLE IF EXISTS admin_5678;
CREATE TABLE admin_5678 AS select osm_id, way,admin_level from planet_osm_roads where 'boundary'='administrative' and admin_level in ('5','6','7','8');
ALTER TABLE admin_5678 ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX admin_5678_way_idx ON admin_5678 USING GIST ( way );

DROP TABLE IF EXISTS admin_other;
CREATE TABLE admin_other AS select osm_id, way,admin_level from planet_osm_roads where 'boundary'='administrative' and (admin_level is null or admin_level not in ('0','1','2','3','4','5','6','7','8'));
ALTER TABLE admin_other ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX admin_other_way_idx ON admin_other USING GIST ( way );

DROP TABLE IF EXISTS buildings_lz;
CREATE TABLE buildings_lz AS select osm_id, way,building,railway,amenity from planet_osm_polygon where railway='station' or building in ('station','supermarket') or amenity='place_of_worship' order by z_order,way_area desc;
ALTER TABLE buildings_lz ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX buildings_lz_way_idx ON buildings_lz USING GIST ( way );

DROP TABLE IF EXISTS buildings;
CREATE TABLE buildings AS select osm_id, way,aeroway, case when building in ('residential','house','garage','garages','detached','terrace','apartments') then 'INT-light'::text else building end as building from planet_osm_polygon where (building is not null and building not in ('no','station','supermarket','planned') and (railway is null or railway != 'station') and (amenity is null or amenity != 'place_of_worship')) or aeroway = 'terminal' order by z_order,way_area desc;
ALTER TABLE buildings ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX buildings_way_idx ON buildings USING GIST ( way );

DROP TABLE IF EXISTS glaciers_text;
CREATE TABLE glaciers_text AS select osm_id, way,name,way_area from planet_osm_polygon where 'natural'='glacier' and building is null order by way_area desc;
ALTER TABLE glaciers_text ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX glaciers_way_idx ON glaciers_text USING GIST ( way );

DROP TABLE IF EXISTS highway_area_casing;
CREATE TABLE highway_area_casing AS select osm_id, way,highway,railway from planet_osm_polygon where highway in ('residential','unclassified','pedestrian','service','footway','track','path','platform') or railway='platform' order by z_order,way_area desc;
ALTER TABLE highway_area_casing ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX highway_area_casing_way_idx ON highway_area_casing USING GIST ( way );

DROP TABLE IF EXISTS highway_area_fill;
CREATE TABLE highway_area_fill AS select osm_id, way,highway,railway,aeroway from planet_osm_polygon where highway in ('residential','unclassified','pedestrian','service','footway','living_street','track','path','platform','services') or railway='platform' or aeroway in ('runway','taxiway','helipad') order by z_order,way_area desc;
ALTER TABLE highway_area_fill ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX highway_area_fill_way_idx ON highway_area_casing USING GIST ( way );

DROP TABLE IF EXISTS landcover_line;
CREATE TABLE landcover_line AS select osm_id, way from planet_osm_line where man_made='cutline';
ALTER TABLE landcover_line ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX landcover_line_way_idx ON landcover_line USING GIST ( way );

DROP TABLE IF EXISTS landcover;
CREATE TABLE landcover AS select osm_id, way,aeroway,amenity,landuse,leisure,man_made,military,'natural'::text as natural	,power,tourism,name,highway, case when religion in ('christian','jewish') then religion else 'INT-generic'::text end as religion from planet_osm_polygon where landuse is not null or leisure is not null or aeroway in ('apron','aerodrome') or amenity in ('parking','university','college','school','hospital','kindergarten','grave_yard') or military in ('barracks','danger_area') or 'natural' in ('field','beach','desert','heath','mud','grassland','wood','sand','scrub') or power in ('station','sub_station','generator') or tourism in ('attraction','camp_site','caravan_site','picnic_site','zoo') or highway in ('services','rest_area') order by z_order,way_area desc;
ALTER TABLE landcover ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX landcover_way_idx ON landcover USING GIST ( way );

DROP TABLE IF EXISTS landuse_overlay;
CREATE TABLE landuse_overlay AS select osm_id, way,landuse,leisure from planet_osm_polygon where (landuse = 'military' or leisure='nature_reserve') and building is null;
ALTER TABLE landuse_overlay ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX landuse_overlay_way_idx ON landuse_overlay USING GIST ( way );

DROP TABLE IF EXISTS minor_roads_casing;
CREATE TABLE minor_roads_casing AS select osm_id, way,highway, case when tunnel in ('yes','true','1') then 'yes'::text else 'no' end as tunnel, case when service in ('parking_aisle','drive-through','driveway') then 'INT-minor'::text else service end as service from planet_osm_line where highway in ('motorway','motorway_link','trunk','trunk_link','primary','primary_link','secondary','secondary_link','tertiary','tertiary_link','residential','unclassified','road','service','pedestrian','raceway','living_street') order by z_order;
ALTER TABLE minor_roads_casing ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX minor_roads_casing_way_idx ON minor_roads_casing USING GIST ( way );

DROP TABLE IF EXISTS minor_roads_fill;
CREATE TABLE minor_roads_fill AS select osm_id, way,highway,horse,bicycle,foot,construction,aeroway, case when tunnel in ('yes','true','1') then 'yes'::text else tunnel end as tunnel, case when bridge in ('yes','true','1','viaduct') then 'yes'::text else bridge end as bridge, case when railway in ('spur','siding') or (railway='rail' and service in ('spur','siding','yard')) then 'spur-siding-yard'::text else railway end as railway, case when service in ('parking_aisle','drive-through','driveway') then 'INT-minor'::text else service end as service from planet_osm_line where highway is not null or aeroway in ('runway','taxiway') or railway in ('light_rail','narrow_gauge','funicular','rail','subway','tram','spur','siding','platform','disused','abandoned','construction','miniature','turntable') order by z_order;
ALTER TABLE minor_roads_fill ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX minor_roads_fill_way_idx ON minor_roads_fill USING GIST ( way );

DROP TABLE IF EXISTS placenames_capital;
CREATE TABLE placenames_capital AS select osm_id, way,place,name,ref from planet_osm_point where place in ('city','metropolis','town') and capital='yes';
ALTER TABLE placenames_capital ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX placenames_capital_way_idx ON placenames_capital USING GIST ( way );

DROP TABLE IF EXISTS placenames_large;
CREATE TABLE placenames_large AS select osm_id, way,place,name,ref from planet_osm_point where place in ('country','state');
ALTER TABLE placenames_large ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX placenames_large_way_idx ON placenames_large USING GIST ( way );

DROP TABLE IF EXISTS placenames_medium;
CREATE TABLE placenames_medium AS select osm_id, way,place,name from planet_osm_point where place in ('city','metropolis','town','large_town','small_town') and (capital is null or capital != 'yes');
ALTER TABLE placenames_medium ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX placenames_medium_way_idx ON placenames_medium USING GIST ( way );

DROP TABLE IF EXISTS placenames_small;
CREATE TABLE placenames_small AS select osm_id, way,place,name from planet_osm_point where place in ('suburb','village','large_village','hamlet','locality','isolated_dwelling','farm');
ALTER TABLE placenames_small ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX placenames_small_way_idx ON placenames_small USING GIST ( way );

DROP TABLE IF EXISTS polygon_barrier;
CREATE TABLE polygon_barrier AS select osm_id, way,barrier,'natural'::text as natural from planet_osm_polygon where barrier is not null or 'natural'='hedge';
ALTER TABLE polygon_barrier ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX polygon_barrier_way_idx ON polygon_barrier USING GIST ( way );

DROP TABLE IF EXISTS roads_text_name;
CREATE TABLE roads_text_name AS select osm_id, way,highway,name from planet_osm_line where waterway IS NULL and leisure IS NULL and landuse IS NULL and name is not null;
ALTER TABLE roads_text_name ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX roads_text_name_way_idx ON roads_text_name USING GIST ( way );

DROP TABLE IF EXISTS roads_text_ref_low_zoom;
CREATE TABLE roads_text_ref_low_zoom AS select osm_id, way,highway,ref,char_length(ref) as length from planet_osm_roads where highway in ('motorway','trunk','primary','secondary') and ref is not null and char_length(ref) between 1 and 8;
ALTER TABLE roads_text_ref_low_zoom ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX roads_text_ref_low_zoom_way_idx ON roads_text_ref_low_zoom USING GIST ( way );

DROP TABLE IF EXISTS roads_text_ref;
CREATE TABLE roads_text_ref AS select osm_id, way,highway,aeroway,ref,char_length(ref) as length, case when bridge in ('yes','true','1') then 'yes'::text else bridge end as bridge from planet_osm_line where (highway is not null or aeroway is not null) and ref is not null and char_length(ref) between 1 and 8;
ALTER TABLE roads_text_ref ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX roads_text_ref_way_idx ON roads_text_ref USING GIST ( way );

DROP TABLE IF EXISTS roads;
CREATE TABLE roads AS select osm_id, way,highway, case when tunnel in ('yes','true','1') then 'yes'::text else tunnel end as tunnel, case when railway='preserved' and service in ('spur','siding','yard') then 'INT-preserved-ssy'::text else railway end as railway from planet_osm_roads where highway is not null or (railway is not null and railway!='preserved' and (service is null or service not in ('spur','siding','yard'))) or railway='preserved' order by z_order;
ALTER TABLE roads ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX roads_way_idx ON roads USING GIST ( way );

DROP TABLE IF EXISTS sports_grounds;
CREATE TABLE sports_grounds AS select osm_id, way,leisure, case when leisure='pitch' then 2 when leisure='track' then 1 else 0 end as prio from planet_osm_polygon where leisure in ('sports_centre','stadium','pitch','track') order by z_order,prio,way_area desc;
ALTER TABLE sports_grounds ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX sports_grounds_way_idx ON sports_grounds USING GIST ( way );

DROP TABLE IF EXISTS water_areas_overlay;
CREATE TABLE water_areas_overlay AS select osm_id, way,'natural'::text as natural from planet_osm_polygon where 'natural' in ('marsh','wetland') and building is null order by z_order,way_area desc;
ALTER TABLE water_areas_overlay ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX water_areas_overlay_way_idx ON water_areas_overlay USING GIST ( way );

DROP TABLE IF EXISTS water_areas;
CREATE TABLE water_areas AS select osm_id, way,'natural'::text as natural,waterway,landuse,name from planet_osm_polygon where (waterway in ('dock','mill_pond','riverbank','canal') or landuse in ('reservoir','water','basin') or 'natural' in ('lake','water','land','glacier','mud','bay')) and building is null order by z_order,way_area desc;
ALTER TABLE water_areas ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX water_areas_way_idx ON water_areas USING GIST ( way );

DROP TABLE IF EXISTS water_lines_casing;
CREATE TABLE water_lines_casing AS select osm_id, way,waterway from planet_osm_line where waterway in ('stream','drain','ditch') and (tunnel is null or tunnel != 'yes');
ALTER TABLE water_lines_casing ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX water_lines_casing_way_idx ON water_lines_casing USING GIST ( way );

DROP TABLE IF EXISTS water_lines_low_zoom;
CREATE TABLE water_lines_low_zoom AS select osm_id, way,waterway from planet_osm_line where waterway='river';
ALTER TABLE water_lines_low_zoom ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX water_lines_low_zoom_way_idx ON water_lines_low_zoom USING GIST ( way );

DROP TABLE IF EXISTS water_lines;
CREATE TABLE water_lines AS select osm_id, way,waterway,disused,lock,name, case when tunnel in ('yes','true','1') then 'yes'::text else tunnel end as tunnel from planet_osm_line where waterway in ('weir','river','canal','derelict_canal','stream','drain','ditch','wadi') and (bridge is null or bridge not in ('yes','true','1','aqueduct')) order by z_order;
ALTER TABLE water_lines ADD COLUMN fid SERIAL PRIMARY KEY;
CREATE INDEX water_lines_way_idx ON water_lines USING GIST ( way );

