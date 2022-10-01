UPDATE collisions
SET county_population = replace(county_population, ',', '');

ALTER TABLE "Counties"
ALTER COLUMN county_population TYPE numeric
USING county_population::numeric;

UPDATE collisions
SET county_location_population = county_population
FROM "Counties"
WHERE collisions.county_location = "Counties".county;