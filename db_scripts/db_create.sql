create table Users (
    UserId int not null unique,
    UserName varchar(50) not null unique,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    UserPassword varchar(50) not null,
    JoinDate datetime not null,

    primary key (UserId)
);
