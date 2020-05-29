use codeup_test_db;

SELECT 'All albums in your table' AS 'Query 1';

update albums
set sales = sales * 10;

SELECT 'All albums released before 1980' AS 'Query 2';
update albums
set release_date = release_date - 100
where release_date <= 1980;

SELECT 'All albums by Michael Jackson' AS 'Query 3';
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select * from albums;