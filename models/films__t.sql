SELECT
  tconst,
  UPPER(titleType),
  UPPER(primaryTitle) AS primaryTitle,
  originalTitle,
  isAdult,
  startYear,
  endYear,
  runtimeMinutes,
  genres
FROM {{ source('postgres','basics') }}