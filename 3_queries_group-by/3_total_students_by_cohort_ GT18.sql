SELECT cohorts.name AS cohort_name, COUNT(students.cohort_id) AS student_count
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING COUNT(students.cohort_id) >= 18
ORDER BY COUNT(students.cohort_id);