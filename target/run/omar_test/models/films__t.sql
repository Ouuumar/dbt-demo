
  create view "films"."public"."films__t__dbt_tmp"
    
    
  as (
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
FROM "films"."public"."basics"
  );