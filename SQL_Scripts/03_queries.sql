-- Time to Hire
SELECT job_title,
DATEDIFF(close_date, open_date) AS time_to_hire
FROM job_requisitions;

-- Client-wise Hiring
SELECT c.client_name, COUNT(o.offer_id) AS total_hires
FROM clients c
JOIN job_requisitions j ON c.client_id = j.client_id
JOIN offers o ON j.job_id = o.job_id
GROUP BY c.client_name;

-- Offer to Join Ratio
SELECT 
COUNT(join_date) / COUNT(offer_id) AS offer_to_join_ratio
FROM offers;
