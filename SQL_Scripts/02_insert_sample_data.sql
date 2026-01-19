INSERT INTO clients (client_name) VALUES
('ABC Corp'), ('XYZ Ltd');

INSERT INTO job_requisitions (client_id, job_title, open_date, close_date)
VALUES
(1, 'SQL Developer', '2025-01-01', '2025-01-20'),
(2, 'Data Analyst', '2025-01-05', '2025-01-25');

INSERT INTO candidates (candidate_name, email, experience)
VALUES
('Ravi Kumar', 'ravi@gmail.com', 2.5),
('Anita Sharma', 'anita@gmail.com', 1.8);

INSERT INTO offers (candidate_id, job_id, offer_date, join_date)
VALUES
(1, 1, '2025-01-18', '2025-01-25');
