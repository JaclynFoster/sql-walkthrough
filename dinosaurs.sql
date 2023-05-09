Dinosaurs {
	id SERIAL PRIMARY KEY
	species_id INT NOT NULL REFERENCES Species(id)
	nickname varchar(100) null
	temperament_desc varchar(100)
	weight_in_lbs decimal
	age_in_years decimal
	gender varchar null
}

Class {
	id SERIAL PRIMARY KEY
	name varchar(100) unique
	dietary_classification varchar(100)
	description varchar(100)
	primary_era varchar(100)
}

Species {
	id SERIAL PRIMARY KEY
	class_id integer > Class.id
	name varchar unique
	time_appeared date
	time_disappeared date null
	has_fur boolean
	has_feathers boolean
	has_scales boolean
	can_fly boolean
}

Habitat {
	id SERIAL PRIMARY KEY
	name varchar(100) unique
	classification varchar(100)
	avg_temp_in_fh decimal
}

Species_Habitat {
	id SERIAL PRIMARY KEY
	species_id integer > Species.id
	habitat_id integer > Habitat.id