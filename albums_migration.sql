USE codeup_test_db;

create table if not exists albums (
    id integer,
    artist string,
    name string,
    release_date integer,
    sales float,
    genre string
);

