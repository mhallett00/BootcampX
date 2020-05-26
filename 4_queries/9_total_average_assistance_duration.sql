SELECT AVG(total_assistance_time) AS average_total_duration
FROM (
  SELECT cohorts.name as cohort, SUM(completed_at - started_at) as total_assistance_time
  FROM assistance_requests 
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) AS total_assistance_time ;