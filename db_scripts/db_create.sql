CREATE TABLE User
(
    user_id int NOT NULL AUTO_INCREMENT,
    user_name varchar(50) NOT NULL UNIQUE,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    user_password varchar(50) NOT NULL,
    join_date datetime NOT NULL,

    PRIMARY KEY (user_id)
);

CREATE TABLE Subject
(
    subject_id int NOT NULL AUTO_INCREMENT,
    subject_title varchar(50) NOT NULL,
    subject_description varchar(500) NOT NULL,

    PRIMARY KEY (subject_id)
);

CREATE TABLE Location
(
    location_id int NOT NULL AUTO_INCREMENT,
    location_name varchar(50) NOT NULL,
    location_address varchar(50) NOT NULL,
    location_description varchar(500),

    PRIMARY KEY (location_id)
);

CREATE TABLE Rank
(
    rank_id int NOT NULL AUTO_INCREMENT,
    rank_title int NOT NULL,
    subject_id int,

    PRIMARY KEY (rank_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);