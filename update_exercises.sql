use codeup_test_db;

select 'All albums in your table' as 'Exercise 1';
select * from albums;
updat albums set sales = sales * 10;


Select 'All albums released before 1980';
select * from albums where release_date <= 1980;
where release_date <= 1980;

Select 'All albums by Michael Jackson' as 'Exercise 3';
select * from albums where artist = 'Michael Jackson';
update albums
set artists = 'Peter Jackson'
where artists = 'Michael Jackson';
