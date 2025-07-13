SELECT
  MAX((CASE WHEN continent = 'America' THEN X.name ELSE NULL END)) AS "America",
  MAX((CASE WHEN continent = 'Asia' THEN X.name ELSE NULL END)) AS "Asia",
  MAX((CASE WHEN continent = 'Europe' THEN X.name ELSE NULL END)) AS "Europe"
FROM
  (
    SELECT
      continent,
      name,
      ROW_NUMBER() OVER(PARTITION BY continent ORDER BY name) AS rn
    FROM
      student
  ) X
GROUP BY
  rn;