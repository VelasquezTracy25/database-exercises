USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100),
    album_name VARCHAR(100),
    release_date INT UNSIGNED,
    sales DOUBLE,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

