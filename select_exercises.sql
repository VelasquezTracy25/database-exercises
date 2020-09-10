USE codeup_test_db;

-- The name of all albums by Pink Floyd
SELECT * FROM codeup_test_db AS 'All albums by Pink Floyd' WHERE artist = 'Pink Floyd';

-- The year Sgt.Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely hearts Club Band';

-- The genre for Nevermind
SELECT genre FROM albums WHERE album_name = 'Nevermind';

-- Which albums had less than 20 million certified sales
SELECT album_name FROM albums WHERE sales < '20.0';

-- All the albums with a genre of "Rock".
-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT album_name FROM albums WHERE genre = 'rock';