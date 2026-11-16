create table netflix(
show_id	VARCHAR(6),
type	VARCHAR(10),
title	VARCHAR(150),
director	VARCHAR(208),
casts	VARCHAR(1000),
country	VARCHAR(150),
date_added	VARCHAR(50),
release_year	INT,
rating	VARCHAR(10),
duration	VARCHAR(15),
listed_in	VARCHAR(25),
description VARCHAR(250)

);
DROP TABLE IF EXISTS netflix;

create table netflix(
show_id	VARCHAR(6),
type	VARCHAR(10),
title	VARCHAR(150),
director	VARCHAR(208),
casts	VARCHAR(1000),
country	VARCHAR(150),
date_added	VARCHAR(50),
release_year	INT,
rating	VARCHAR(10),
duration	VARCHAR(15),
listed_in	VARCHAR(100),
description VARCHAR(250)

);
select * from netflix;

select COUNT(*) as total_count from netflix;

select distinct type from netflix;

--Count the Number of Movies vs TV Shows

select DISTINCT type,count(*) as type_count
from netflix
group by type;

--Find the Most Common Rating for Movies and TV Shows

WITH RatingCounts AS (
    SELECT 
        type,
        rating,
        COUNT(*) AS rating_count
    FROM netflix
    GROUP BY type, rating
),
RankedRatings AS (
    SELECT 
        type,
        rating,
        rating_count,
        RANK() OVER (PARTITION BY type ORDER BY rating_count DESC) AS rank
    FROM RatingCounts
)
SELECT 
    type,
    rating AS most_frequent_rating
FROM RankedRatings
WHERE rank = 1;

--List All Movies Released in a Specific Year (e.g., 2020)

select * from netflix where release_year=2020;

--Find the Top 5 Countries with the Most Content on Netflix

select unnest(STRING_TO_ARRAY(country,',')) as new_country,
count (*) as total_content
from netflix
group by new_country
order by total_content desc
limit 5;

--Identify the Longest Movie

select * from netflix
where type='Movie' and duration=(select max(duration) from netflix)

--Find Content Added in the Last 6 Years

select * from netflix 
where to_date(date_added, 'Month DD,YYYY')>=CURRENT_DATE - INTERVAL '6 years'

--Find All Movies/TV Shows by Director 'Rajiv Chilaka'

select * from netflix
where director ILIKE '%Rajiv Chilaka%'; --ILIKE includes both upper & lower case characters

--List All TV Shows with More Than 5 Seasons

select * from netflix
where type='TV Show' AND split_part(duration,' ',1)::INT>5; --1 is like choose the first word/number before the space like 6 season there is a space between 6 & season so it take 6 (since before space)

select split_part('Apple Banana Cherry',' ',2) -- Banana

--Count the Number of Content Items in Each Genre

select UNNEST(STRING_TO_ARRAY(listed_in,',')) as genre, count(*) as total_count
from netflix
group by genre
order by total_count desc

--List All Movies that are Documentaries

select type, listed_in from netflix 
where listed_in LIKE '%Documentaries'

--Find All Content Without a Director

select * from netflix 
where director is null;

select count(*) from netflix
where director is null;

--Find each year and the average numbers of content release in India on netflix.

select extract(year from to_date(date_added,'Month DD, YYYY')) as year,
count(*) as yearly_content,
round(count(*)::numeric/(select count(*) from netflix where country='India')::numeric*100,2) as avg_content_per_year
from netflix
where country = 'India'
group by 1

--Find How Many Movies Actor 'Salman Khan' Appeared in the Last 10 Years

select * from netflix
where casts ilike '%Salman Khan%'
and release_year > extract( year from current_date) -10

--Find the Top 10 Actors Who Have Appeared in the Highest Number of Movies Produced in India

select unnest(string_to_array(casts,',')) as actors,
count(*) as total_content
from netflix
where country ilike '%india'
group by 1
order by 2 desc
limit 10;

--Categorize Content Based on the Presence of 'Kill' and 'Violence' Keywords

with new_table as 
(select *, case
			when description ilike '%kill%' or
			description ilike '%violence%' then 'Bad'
			else 'Good'
			end as category
from netflix)

select category, count(*) as total_count
from new_table
group by 1
