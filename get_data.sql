UPDATE collisions
SET alcohol_involved = 0
WHERE alcohol_involved IS NULL
;

COPY (
SELECT latitude, longitude, statewide_vehicle_type_at_fault, alcohol_involved, truck_collision, motorcycle_collision, bicycle_collision, pedestrian_collision, lighting, road_surface, hit_and_run, party_count, injured_victims, killed_victims, location_type, county_location, population, county_location_population 
FROM collisions 
WHERE (latitude, longitude, statewide_vehicle_type_at_fault, truck_collision, motorcycle_collision, bicycle_collision, pedestrian_collision, lighting, road_surface, hit_and_run, party_count, injured_victims, killed_victims, location_type, county_location, population, county_location_population) IS NOT NULL
)
TO
'/Users/patricknaylor/Desktop/CA_traffic/Data/selected_columns.csv'
WITH CSV DELIMITER ',' HEADER

