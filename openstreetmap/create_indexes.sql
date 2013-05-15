CREATE INDEX planet_osm_point_place_idx ON planet_osm_point ( place );
CREATE INDEX planet_osm_point_capital_idx ON planet_osm_point ( capital );

CREATE INDEX planet_osm_polygon_waterway_idx ON planet_osm_polygon ( waterway );
CREATE INDEX planet_osm_polygon_tourism_idx ON planet_osm_polygon ( tourism );
CREATE INDEX planet_osm_polygon_natural_idx ON planet_osm_polygon ( natural );
CREATE INDEX planet_osm_polygon_leisure_idx ON planet_osm_polygon ( leisure );
CREATE INDEX planet_osm_polygon_landuse_idx ON planet_osm_polygon ( landuse );
CREATE INDEX planet_osm_polygon_highway_idx ON planet_osm_polygon ( highway );
CREATE INDEX planet_osm_polygon_building_idx ON planet_osm_polygon ( building );
CREATE INDEX planet_osm_polygon_barrier_idx ON planet_osm_polygon ( barrier );
CREATE INDEX planet_osm_polygon_amenity_idx ON planet_osm_polygon ( amenity );

CREATE INDEX planet_osm_line_aeroway_idx ON planet_osm_line ( aeroway );
CREATE INDEX planet_osm_line_bridge_idx ON planet_osm_line ( bridge );
CREATE INDEX planet_osm_line_highway_idx ON planet_osm_line ( highway );
CREATE INDEX planet_osm_line_man_made_idx ON planet_osm_line ( man_made );
CREATE INDEX planet_osm_line_railway_idx ON planet_osm_line ( railway );
CREATE INDEX planet_osm_line_waterway_idx ON planet_osm_line ( waterway );
CREATE INDEX planet_osm_line_z_order_idx ON planet_osm_line ( z_order );
