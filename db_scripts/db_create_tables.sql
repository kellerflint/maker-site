CREATE TABLE User
(
    user_id int NOT NULL AUTO_INCREMENT,
    user_name varchar(50) NOT NULL UNIQUE,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    user_password varchar(50) NOT NULL,
    user_role varchar(50) NOT NULL,
    join_date datetime NOT NULL,

    PRIMARY KEY (user_id)
);

CREATE TABLE Subject
(
    subject_id int NOT NULL AUTO_INCREMENT,
    subject_title varchar(50) NOT NULL,

    PRIMARY KEY (subject_id)
);


CREATE TABLE Rank
(
    rank_id int NOT NULL AUTO_INCREMENT,
    subject_id int,
    rank_title varchar(50) NOT NULL,
    rank_level int NOT NULL,

    PRIMARY KEY (rank_id),
    FOREIGN KEY (subject_id) REFERENCES Subject (subject_id) ON UPDATE CASCADE
);

CREATE TABLE Badge
(
    badge_id int NOT NULL AUTO_INCREMENT,
    badge_title varchar(50) NOT NULL,
    rank_id int,
    badge_required varchar(5) NOT NULL,
    badge_description varchar(500),

    PRIMARY KEY (badge_id),
    FOREIGN KEY (rank_id) REFERENCES Rank (rank_id) ON UPDATE CASCADE
);

CREATE TABLE User_Badge
(
    user_id int,
    badge_id int,
    user_badge_date datetime NOT NULL,

    PRIMARY KEY (user_id, badge_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id) ON UPDATE CASCADE,
    FOREIGN KEY (badge_id) REFERENCES Badge (badge_id) ON UPDATE CASCADE
);

CREATE TABLE User_Rank
(
    user_id int,
    rank_id int,
    user_rank_date datetime NOT NULL,

    PRIMARY KEY (user_id, rank_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id) ON UPDATE CASCADE,
    FOREIGN KEY (rank_id) REFERENCES Rank (rank_id) ON UPDATE CASCADE
);

/* Old Version

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
    location_name varchar(50),
    location_address varchar(90) NOT NULL,
    location_description varchar(500),

    PRIMARY KEY (location_id)
);

CREATE TABLE Rank
(
    rank_id int NOT NULL AUTO_INCREMENT,
    rank_title varchar(50) NOT NULL,
    rank_level int NOT NULL,
    subject_id int,

    PRIMARY KEY (rank_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id) ON UPDATE CASCADE
);

CREATE TABLE Student
(
    student_id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    rank_id int NOT NULL,

    PRIMARY KEY (student_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON UPDATE CASCADE,
    FOREIGN KEY (rank_id) REFERENCES Rank(rank_id) ON UPDATE CASCADE

);

CREATE TABLE Badge
(
    badge_id int NOT NULL AUTO_INCREMENT,
    badge_title varchar(50) NOT NULL,
    rank_id int,
    badge_required varchar(5),
    badge_description varchar(500),

    PRIMARY KEY (badge_id),
    FOREIGN KEY (rank_id) REFERENCES Rank(rank_id) ON UPDATE CASCADE
);

CREATE TABLE Instructor
(
    instructor_id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    rank_id int,
    location_id int,

    PRIMARY KEY (instructor_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON UPDATE CASCADE,
    FOREIGN KEY (rank_id) REFERENCES Rank(rank_id) ON UPDATE CASCADE,
    FOREIGN KEY (location_id) REFERENCES Location(location_id) ON UPDATE CASCADE
);

CREATE TABLE Admin
(
    admin_id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,

    PRIMARY KEY (admin_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON UPDATE CASCADE
);

CREATE TABLE Badge_Request
(
    student_id int,
    badge_id int,
    badge_request_date datetime NOT NULL,
    badge_request_status varchar(50) NOT NULL,
    badge_request_notes varchar(500),
    badge_request_review_date datetime,

    PRIMARY KEY (student_id, badge_id, badge_request_date),
    FOREIGN KEY (badge_id) REFERENCES Badge(badge_id) ON UPDATE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id) ON UPDATE CASCADE
);

CREATE TABLE Rank_Request
(
    student_id int,
    rank_id int,
    rank_request_date datetime NOT NULL,
    rank_request_status varchar(50) NOT NULL,
    rank_request_notes varchar(500),
    rank_request_review_date datetime,

    PRIMARY KEY (student_id, rank_id, rank_request_date),
    FOREIGN KEY (rank_id) REFERENCES Rank(rank_id) ON UPDATE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id) ON UPDATE CASCADE
);

CREATE TABLE Session 
(
    session_id int NOT NULL AUTO_INCREMENT,
    session_title varchar(50) NOT NULL,
    location_id int,
    subject_id int,
    session_days varchar(50),
    session_start_date date,
    session_end_date date,
    session_start_time time(4),
    session_end_time time(4),
    instructor_id int,

    PRIMARY KEY (session_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id) ON UPDATE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id) ON UPDATE CASCADE,
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id) ON UPDATE CASCADE
);

CREATE TABLE Roster
(
    student_id int,
    session_id int,

    PRIMARY KEY (student_id, session_id)
);

*/