![Netflix Logo](https://github.com/Dhanushkumar04/netflix_sql_project/blob/main/logo.png)

# Netflix Data Analysis Using PostgreSQL

## Project Overview

This project focuses on analyzing Netflix's movies and TV shows dataset using **PostgreSQL** to uncover meaningful insights about content distribution, viewing categories, ratings, release trends, directors, actors, and country-wise production.

The primary objective is to perform Exploratory Data Analysis (EDA) using SQL queries and answer real-world business questions that help understand Netflix's content library and its distribution patterns.

## Objectives

- Analyze the distribution of Movies and TV Shows on Netflix.
- Identify the most common content ratings.
- Explore country-wise content production.
- Analyze content addition trends over the years.
- Identify popular directors and actors.
- Examine movie durations and TV show seasons.
- Categorize content based on keywords in descriptions.

## Dataset Description

The dataset contains information about Netflix movies and TV shows, including:

| Column | Description |
|---|---|
| show_id | Unique identifier for each title |
| type | Type of content (Movie / TV Show) |
| title | Name of the movie or TV show |
| director | Director of the content |
| casts | Actors and cast members |
| country | Country where the content was produced |
| date_added | Date when content was added to Netflix |
| release_year | Original release year |
| rating | Content maturity rating |
| duration | Movie duration or number of TV show seasons |
| listed_in | Genres or categories |
| description | Brief description of the content |

## Tools & Technologies

- **Database:** PostgreSQL
- **Query Language:** SQL
- **Environment:** pgAdmin 4
- **Dataset:** Netflix Movies and TV Shows Dataset

## Business Questions & SQL Analysis

The following business questions were explored using SQL queries:

1. **Count the Total Number of Movies and TV Shows**
   - Determine the total number of content items available in the dataset.

2. **Find the Distribution of Movies vs. TV Shows**
   - Compare the number of Movies and TV Shows available on Netflix.

3. **Identify the Most Common Rating for Movies and TV Shows**
   - Determine the most frequently occurring content rating for each type.

4. **List All Movies Released in a Specific Year**
   - Retrieve movies released in 2020.

5. **Find the Top 5 Countries with the Most Content on Netflix**
   - Identify the countries contributing the highest number of titles.

6. **Identify the Longest Movie**
   - Find the movie with the maximum duration.

7. **Find Content Added in the Last 6 Years**
   - Retrieve titles added to Netflix within the specified six-year period.

8. **Find All Movies and TV Shows by a Specific Director**
   - Retrieve content directed by Rajiv Chilaka.

9. **List All TV Shows with More Than 5 Seasons**
   - Identify TV shows that have more than five seasons.

10. **Count the Number of Content Items in Each Genre**
    - Analyze the distribution of Netflix content across different genres.

11. **Find All Movies Categorized as Documentaries**
    - Retrieve movies belonging to the Documentary genre.

12. **Find All Content Without a Director**
    - Identify titles with missing director information.

13. **Analyze Yearly Content Added in India**
    - Calculate yearly content additions for India and their percentage contribution to the total Indian content in the dataset.

14. **Find Movies Featuring Salman Khan in the Last 10 Years**
    - Identify movies featuring Salman Khan based on their release year.

15. **Find the Top 10 Actors in Indian Netflix Content**
    - Identify actors appearing in the highest number of titles produced in India.

16. **Categorize Content Based on Keywords**
    - Classify content descriptions into categories based on the presence of the keywords 'Kill' and 'Violence'.

## SQL Concepts Applied

This project demonstrates practical implementation of the following PostgreSQL concepts:

- **Aggregate Functions:** COUNT(), MAX(), ROUND()
- **Filtering:** WHERE, AND, OR, IS NULL, IS NOT NULL
- **Grouping & Sorting:** GROUP BY, ORDER BY
- **String Functions:** STRING_TO_ARRAY(), UNNEST(), SPLIT_PART()
- **Date Functions:** TO_DATE(), EXTRACT(), CURRENT_DATE
- **Pattern Matching:** LIKE, ILIKE
- **Common Table Expressions:** WITH clause (CTE)
- **Window Functions:** RANK() OVER(), PARTITION BY
- **Conditional Statements:** CASE WHEN
- **Subqueries:** Nested SELECT statements
- **Type Casting:** ::INT, ::NUMERIC

## Key Learnings

- Gained practical experience in querying and analyzing structured datasets using PostgreSQL.
- Improved understanding of aggregate functions and grouping techniques.
- Learned to handle missing values and inconsistent data.
- Practiced extracting and transforming comma-separated values using PostgreSQL string functions.
- Applied CTEs and window functions to solve analytical problems.
- Developed an understanding of translating business questions into SQL queries.

## Repository Structure

```text
Netflix-Data-Analysis/
│
├── Netflix_Dataset.csv
├── Netflix_SQL_Queries.sql
└── README.md
```

## How to Run the Project

1. Clone this repository:

   ```bash
   git clone <your-github-repository-url>
   ```

2. Open PostgreSQL using pgAdmin 4.

3. Create a database:

   ```sql
   CREATE DATABASE netflix_db;
   ```

4. Connect to the newly created database.

5. Create the `netflix` table using the SQL table definition provided in the SQL file.

6. Import the Netflix CSV dataset into the table.

7. Open and execute `Netflix_SQL_Queries.sql` to explore the business questions and their solutions.

## Conclusion

This project demonstrates how SQL can be used to solve practical business problems through data analysis. By analyzing Netflix's content library, I gained hands-on experience in data exploration, data cleaning techniques, aggregation, date handling, string manipulation, and advanced SQL queries.

The project strengthened my PostgreSQL skills and provided practical exposure to approaching real-world business questions from a Data Analyst's perspective.

---

**Author:** Dhanush Kumar  
**Project:** Netflix Data Analysis Using PostgreSQL  
**Domain:** Data Analytics | SQL | Exploratory Data Analysis
