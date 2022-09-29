-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: switrs
-- Source Schemata: switrs
-- Created: Tue Sep 27 13:15:21 2022
-- Workbench Version: 8.0.30
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema switrs
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `switrs` ;
CREATE SCHEMA IF NOT EXISTS `switrs` ;

-- ----------------------------------------------------------------------------
-- Table switrs.collisions
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `switrs`.`collisions` (
  `case_id` LONGTEXT NULL DEFAULT NULL,
  `jurisdiction` INT NULL DEFAULT NULL,
  `officer_id` LONGTEXT NULL DEFAULT NULL,
  `reporting_district` LONGTEXT NULL DEFAULT NULL,
  `chp_shift` LONGTEXT NULL DEFAULT NULL,
  `population` LONGTEXT NULL DEFAULT NULL,
  `county_city_location` LONGTEXT NULL DEFAULT NULL,
  `county_location` LONGTEXT NULL DEFAULT NULL,
  `special_condition` LONGTEXT NULL DEFAULT NULL,
  `beat_type` LONGTEXT NULL DEFAULT NULL,
  `chp_beat_type` LONGTEXT NULL DEFAULT NULL,
  `city_division_lapd` LONGTEXT NULL DEFAULT NULL,
  `chp_beat_class` LONGTEXT NULL DEFAULT NULL,
  `beat_number` LONGTEXT NULL DEFAULT NULL,
  `primary_road` LONGTEXT NULL DEFAULT NULL,
  `secondary_road` LONGTEXT NULL DEFAULT NULL,
  `distance` DOUBLE NULL DEFAULT NULL,
  `direction` LONGTEXT NULL DEFAULT NULL,
  `intersection` INT NULL DEFAULT NULL,
  `weather_1` LONGTEXT NULL DEFAULT NULL,
  `weather_2` LONGTEXT NULL DEFAULT NULL,
  `state_highway_indicator` INT NULL DEFAULT NULL,
  `caltrans_county` LONGTEXT NULL DEFAULT NULL,
  `caltrans_district` INT NULL DEFAULT NULL,
  `state_route` INT NULL DEFAULT NULL,
  `route_suffix` LONGTEXT NULL DEFAULT NULL,
  `postmile_prefix` LONGTEXT NULL DEFAULT NULL,
  `postmile` DOUBLE NULL DEFAULT NULL,
  `location_type` LONGTEXT NULL DEFAULT NULL,
  `ramp_intersection` LONGTEXT NULL DEFAULT NULL,
  `side_of_highway` LONGTEXT NULL DEFAULT NULL,
  `tow_away` INT NULL DEFAULT NULL,
  `collision_severity` LONGTEXT NULL DEFAULT NULL,
  `killed_victims` INT NULL DEFAULT NULL,
  `injured_victims` INT NULL DEFAULT NULL,
  `party_count` INT NULL DEFAULT NULL,
  `primary_collision_factor` LONGTEXT NULL DEFAULT NULL,
  `pcf_violation_code` LONGTEXT NULL DEFAULT NULL,
  `pcf_violation_category` LONGTEXT NULL DEFAULT NULL,
  `pcf_violation` INT NULL DEFAULT NULL,
  `pcf_violation_subsection` LONGTEXT NULL DEFAULT NULL,
  `hit_and_run` LONGTEXT NULL DEFAULT NULL,
  `type_of_collision` LONGTEXT NULL DEFAULT NULL,
  `motor_vehicle_involved_with` LONGTEXT NULL DEFAULT NULL,
  `pedestrian_action` LONGTEXT NULL DEFAULT NULL,
  `road_surface` LONGTEXT NULL DEFAULT NULL,
  `road_condition_1` LONGTEXT NULL DEFAULT NULL,
  `road_condition_2` LONGTEXT NULL DEFAULT NULL,
  `lighting` LONGTEXT NULL DEFAULT NULL,
  `control_device` LONGTEXT NULL DEFAULT NULL,
  `chp_road_type` LONGTEXT NULL DEFAULT NULL,
  `pedestrian_collision` INT NULL DEFAULT NULL,
  `bicycle_collision` INT NULL DEFAULT NULL,
  `motorcycle_collision` INT NULL DEFAULT NULL,
  `truck_collision` INT NULL DEFAULT NULL,
  `not_private_property` INT NULL DEFAULT NULL,
  `alcohol_involved` INT NULL DEFAULT NULL,
  `statewide_vehicle_type_at_fault` LONGTEXT NULL DEFAULT NULL,
  `chp_vehicle_type_at_fault` LONGTEXT NULL DEFAULT NULL,
  `severe_injury_count` INT NULL DEFAULT NULL,
  `other_visible_injury_count` INT NULL DEFAULT NULL,
  `complaint_of_pain_injury_count` INT NULL DEFAULT NULL,
  `pedestrian_killed_count` INT NULL DEFAULT NULL,
  `pedestrian_injured_count` INT NULL DEFAULT NULL,
  `bicyclist_killed_count` INT NULL DEFAULT NULL,
  `bicyclist_injured_count` INT NULL DEFAULT NULL,
  `motorcyclist_killed_count` INT NULL DEFAULT NULL,
  `motorcyclist_injured_count` INT NULL DEFAULT NULL,
  `primary_ramp` LONGTEXT NULL DEFAULT NULL,
  `secondary_ramp` LONGTEXT NULL DEFAULT NULL,
  `latitude` DOUBLE NULL DEFAULT NULL,
  `longitude` DOUBLE NULL DEFAULT NULL,
  `collision_date` LONGTEXT NULL DEFAULT NULL,
  `collision_time` LONGTEXT NULL DEFAULT NULL,
  `process_date` LONGTEXT NULL DEFAULT NULL);

-- ----------------------------------------------------------------------------
-- Table switrs.victims
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `switrs`.`victims` (
  `id` INT NULL DEFAULT NULL,
  `case_id` LONGTEXT NULL DEFAULT NULL,
  `party_number` INT NULL DEFAULT NULL,
  `victim_role` LONGTEXT NULL DEFAULT NULL,
  `victim_sex` LONGTEXT NULL DEFAULT NULL,
  `victim_age` INT NULL DEFAULT NULL,
  `victim_degree_of_injury` LONGTEXT NULL DEFAULT NULL,
  `victim_seating_position` LONGTEXT NULL DEFAULT NULL,
  `victim_safety_equipment_1` LONGTEXT NULL DEFAULT NULL,
  `victim_safety_equipment_2` LONGTEXT NULL DEFAULT NULL,
  `victim_ejected` LONGTEXT NULL DEFAULT NULL);

-- ----------------------------------------------------------------------------
-- Table switrs.parties
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `switrs`.`parties` (
  `id` INT NULL DEFAULT NULL,
  `case_id` LONGTEXT NULL DEFAULT NULL,
  `party_number` INT NULL DEFAULT NULL,
  `party_type` LONGTEXT NULL DEFAULT NULL,
  `at_fault` INT NULL DEFAULT NULL,
  `party_sex` LONGTEXT NULL DEFAULT NULL,
  `party_age` INT NULL DEFAULT NULL,
  `party_sobriety` LONGTEXT NULL DEFAULT NULL,
  `party_drug_physical` LONGTEXT NULL DEFAULT NULL,
  `direction_of_travel` LONGTEXT NULL DEFAULT NULL,
  `party_safety_equipment_1` LONGTEXT NULL DEFAULT NULL,
  `party_safety_equipment_2` LONGTEXT NULL DEFAULT NULL,
  `financial_responsibility` LONGTEXT NULL DEFAULT NULL,
  `hazardous_materials` INT NULL DEFAULT NULL,
  `cellphone_in_use` INT NULL DEFAULT NULL,
  `cellphone_use_type` LONGTEXT NULL DEFAULT NULL,
  `school_bus_related` INT NULL DEFAULT NULL,
  `oaf_violation_code` LONGTEXT NULL DEFAULT NULL,
  `oaf_violation_category` LONGTEXT NULL DEFAULT NULL,
  `oaf_violation_section` LONGTEXT NULL DEFAULT NULL,
  `oaf_violation_suffix` LONGTEXT NULL DEFAULT NULL,
  `other_associate_factor_1` LONGTEXT NULL DEFAULT NULL,
  `other_associate_factor_2` LONGTEXT NULL DEFAULT NULL,
  `party_number_killed` INT NULL DEFAULT NULL,
  `party_number_injured` INT NULL DEFAULT NULL,
  `movement_preceding_collision` LONGTEXT NULL DEFAULT NULL,
  `vehicle_year` INT NULL DEFAULT NULL,
  `vehicle_make` LONGTEXT NULL DEFAULT NULL,
  `statewide_vehicle_type` LONGTEXT NULL DEFAULT NULL,
  `chp_vehicle_type_towing` LONGTEXT NULL DEFAULT NULL,
  `chp_vehicle_type_towed` LONGTEXT NULL DEFAULT NULL,
  `party_race` LONGTEXT NULL DEFAULT NULL);
SET FOREIGN_KEY_CHECKS = 1;
