USE codeup_test_db;
SHOW TABLES;

drop table if exists albums;

create table albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(100) not null,
    name varchar(100) not null,
    release_date int not null,
    sales decimal(6, 3) not null,
    genre varchar(100),
    primary key (id)
);

