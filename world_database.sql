USE world;

SHOW TABLES;

DESCRIBE city;
DESCRIBE country;
DESCRIBE countrylanguage;

-- How many different countries are in each region?
SELECT region, COUNT(name) as num_countries FROM country
GROUP BY region
ORDER BY COUNT(name);

-- What is the population for each region?
SELECT region, SUM(Population) as population FROM country
GROUP BY region
ORDER BY SUM(Population) DESC;

-- What is the population of each continent?
SELECT Continent, SUM(Population) as population FROM country
GROUP BY Continent
ORDER BY SUM(Continent) DESC;

-- What is the average life expectancy globally?
SELECT AVG(LifeExpectancy) AS 'avg(LifeExpectancy)' FROM country;

-- What is the average life expectancy for each region, each continent? Sort the results from shortest to longest
SELECT Region, avg(LifeExpectancy) as life_expectancy FROM country
GROUP BY Region
ORDER BY AVG(LifeExpectancy) ASC;

#### BONUSES ####
-- Find all the countries whose local name is different from the official name
SELECT name, LocalName from country
WHERE LocalName != name;

-- How many countries have a life expectancy less than x?
SELECT name, LifeExpectancy FROM country
WHERE LifeExpectancy < 65
ORDER BY LifeExpectancy DESC;

-- What state is city x located in?
Select District FROM city
WHERE name = 'Austin';

Select District FROM city
WHERE name = 'New York';

Select District FROM city
WHERE name = 'Paris';

Select District FROM city
WHERE name = 'Tegucigalpa';

-- What region of the world is city x located in?







