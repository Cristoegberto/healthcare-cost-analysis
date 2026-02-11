healthcare_cost_analysis.sql
  
SELECT 
  provider_state,
  ROUND(AVG(average_total_payments),2) AS avg_cost,
  COUNT(*) AS total_discharges
FROM
  `bigquery-public-data.cms_medicare.inpatient_charges_2015`
GROUP BY
  provider_state
HAVING
  total_discharges > 500
ORDER BY
  avg_cost DESC;
