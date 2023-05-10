-- -- Créer une vue temporaire pour la table title_basics_truncated de MySQL
-- WITH mysql_title_basics AS (
--   SELECT *
--   FROM {{ ref('films.title_basics_truncated') }}
-- ),

-- -- Mettre la colonne primaryTitle en majuscule
-- uppercase_primarytitle AS (
--   SELECT 
--     tconst, 
--     UPPER(primaryTitle) AS primaryTitle,
--     originalTitle, 
--     isAdult, 
--     startYear, 
--     endYear, 
--     runtimeMinutes,
--     genres
--   FROM mysql_title_basics
-- )

-- -- Insérer les données transformées dans la table title_basics de PostgreSQL
-- INSERT INTO {{ ref('postgres.title_basics') }} (
--   tconst,
--   primaryTitle,
--   originalTitle,
--   isAdult,
--   startYear,
--   endYear,
--   runtimeMinutes,
--   genres
-- )
-- SELECT 
--   tconst,
--   primaryTitle,
--   originalTitle,
--   isAdult,
--   startYear,
--   endYear,
--   runtimeMinutes,
--   genres
-- FROM uppercase_primarytitle;


SELECT
  tconst,
  titleType,
  UPPER(primaryTitle) AS primaryTitle,
  originalTitle,
  isAdult,
  startYear,
  endYear,
  runtimeMinutes,
  genres
FROM {{ source('title_basics_truncated') }}