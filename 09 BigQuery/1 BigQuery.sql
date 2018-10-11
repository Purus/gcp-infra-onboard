#standardsql
SELECT 
  language, 
  SUM(views) as views
FROM 
  `bigquery-samples.wikipedia_benchmark.Wiki100B`
WHERE 
	REGEXP_CONTAINS(title, "G.*o.*o.*g")
GROUP BY 
   language 
ORDER BY 
  views DESC
