CREATE SCHEMA `bio_dev_original` ;

CREATE TABLE `bio_dev_original`.`covid19` (
  `trial_id` LONGTEXT NULL,
  `last_refreshed_on` LONGTEXT NULL,
  `public_title` LONGTEXT NULL,
  `scientific_title` LONGTEXT NULL,
  `acronym` LONGTEXT NULL,
  `primary_sponsor` LONGTEXT NULL,
  `date_registration` LONGTEXT NULL,
  `date_registration3` LONGTEXT NULL,
  `export_date` LONGTEXT NULL,
  `source_register` LONGTEXT NULL,
  `web_address` LONGTEXT NULL,
  `recruitment_status` LONGTEXT NULL,
  `other_records` LONGTEXT NULL,
  `inclusion_agemin` LONGTEXT NULL,
  `inclusion_agemax` LONGTEXT NULL,
  `inclusion_gender` LONGTEXT NULL,
  `date_enrollement` LONGTEXT NULL,
  `target_size` LONGTEXT NULL,
  `study_type` LONGTEXT NULL,
  `study_design` LONGTEXT NULL,
  `phase` LONGTEXT NULL,
  `countries` LONGTEXT NULL,
  `contact_firstname` LONGTEXT NULL,
  `contact_lastname` LONGTEXT NULL,
  `contact_address` LONGTEXT NULL,
  `contact_email` LONGTEXT NULL,
  `contact_tel` LONGTEXT NULL,
  `contact_affiliation` LONGTEXT NULL,
  `inclusion_criteria` LONGTEXT NULL,
  `exclusion_criteria` LONGTEXT NULL,
  `condition` LONGTEXT NULL,
  `intervention` LONGTEXT NULL,
  `primary_outcome` LONGTEXT NULL,
  `results_date_posted` LONGTEXT NULL,
  `results_date_completed` LONGTEXT NULL,
  `results_url_link` LONGTEXT NULL,
  `retrospective_flag` LONGTEXT NULL,
  `bridging_flag_truefalse` LONGTEXT NULL,
  `bridged_type` LONGTEXT NULL,
  `results_yes_no` LONGTEXT NULL);

-- Inserción de los datos. Se debe copiar el archivo csv a la carpeta '/var/lob/mysql-files'
LOAD DATA INFILE '/var/lib/mysql-files/COVID19-web.csv' INTO TABLE covid19
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY ''
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
