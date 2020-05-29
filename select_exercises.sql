USE codeup_test_db;

select 'The name of all albums by Pink Floyd.' AS 'Query 1';
select * from albums where artist = 'Pink Floyd';

select 'The year Sgt. Pepper''s Lonely Hearts Club Band was released.' as 'Query 2';
select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select 'The genre for Nevermind.' as 'Query 3';
SELECT genre FROM albums
WHERE `name` = 'Nevermind';

select 'Which albums were released in the 1990s' as 'Query 4';
SELECT `name` FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

select 'What albums had less than 20 million certified sales.' as 'Query 5';
SELECT `name` FROM albums
WHERE sales < 20;

select 'All albums with a genre of "Rock".' as 'Query 6';
SELECT `name`, genre
FROM albums
WHERE genre = 'Rock';