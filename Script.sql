DROP TABLE app_user CASCADE;
DROP TABLE user_role CASCADE;
DROP TABLE study_set CASCADE;
DROP TABLE study_set_card CASCADE;
DROP TABLE flashcard CASCADE;
DROP TABLE category CASCADE;


CREATE TABLE user_role(
	role_id SERIAL PRIMARY KEY,
	role_name VARCHAR(50) NOT NULL,
	UNIQUE(role_name)
);

CREATE TABLE app_user(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	role_id_fk INTEGER REFERENCES user_role(role_id),
	UNIQUE(username)
);


CREATE TABLE study_set(
	study_set_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	owner_id_fk INTEGER REFERENCES app_user(user_id),
	UNIQUE(name)
);

CREATE TABLE study_set_card(
	study_set_id_fk SERIAL PRIMARY KEY,
	flashcard_id_fk INTEGER REFERENCES flashcard(flashcard_id)
);

CREATE TABLE flashcard(
	flashcard_id SERIAL PRIMARY KEY,
	question VARCHAR(250) NOT NULL,
	answer VARCHAR(250) NOT NULL,
	category_id_fk INTEGER REFERENCES category(category_id),
	UNIQUE(question)
);

CREATE TABLE category(
	category_id SERIAL PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	UNIQUE(name)
);

INSERT INTO user_role(role_name)
	VALUES ('PREMIUM_USER');


INSERT INTO user_role (role_name)
	VALUES ('BASIC_USER');

-- PROBLEM ONE
SELECT * FROM user_role WHERE role_name = 'BASIC_USER';


-- PROBLEM TWO
--TRUNCATE TABLE app_user;

INSERT INTO app_user (username, PASSWORD, first_name, last_name, role_id_fk)
	VALUES('StannisTheMannis', 'kingofwesteros', 'Stannis', 'Baratheon', 1);

INSERT INTO app_user (username, PASSWORD, first_name, last_name, role_id_fk)
	VALUES('KingBobbyB', 'killedbyaboar', 'Robert', 'Baratheon', 1),
	('KingSlayer', 'goodredemptionarc', 'Jaime', 'Lannister', 1),
	('MadQueen', 'slowlygoinginsane', 'Cersei', 'Lannister', 1),
	('IAmNoOne', 'facelessman', 'Arya', 'Stark', 2),
	('JustKeepRowin', 'blacksmith', 'Gendry', 'Storm', 1);



-- PROBLEM 3
SELECT * FROM app_user JOIN study_set ON user_id = owner_id_fk;

SELECT * FROM app_user WHERE user_id = 5;
SELECT * FROM study_set WHERE owner_id_fk = 5;

/*
 * 	study_set_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	owner_id_fk INTEGER REFERENCES app_user(user_id),
 */


SELECT username FROM app_user  WHERE owner_id = 4;

SELECT questions, answer, category_id_fk FROM flashcard WHERE owner_id = 4;

--I RAN OUT OF TIME. I AM WORRIED THAT MY LACK OF SPEED WILL BE PENALIZED.





