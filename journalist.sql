USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_journalist', 'Journalist', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_journalist', 'Journalist', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('journalist', 'Journalist')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('journalist',0,'crew','Crew',12,'{}','{}'),
	('journalist',1,'cameraman','Cameraman',24,'{}','{}'),
	('journalist',2,'reporter','Reporter',36,'{}','{}')
;