CREATE TABLE clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(100)
);

CREATE TABLE job_requisitions (
    job_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    job_title VARCHAR(100),
    open_date DATE,
    close_date DATE,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE candidates (
    candidate_id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_name VARCHAR(100),
    email VARCHAR(100),
    experience DECIMAL(3,1)
);

CREATE TABLE offers (
    offer_id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_id INT,
    job_id INT,
    offer_date DATE,
    join_date DATE,
    FOREIGN KEY (candidate_id) REFERENCES candidates(candidate_id),
    FOREIGN KEY (job_id) REFERENCES job_requisitions(job_id)
);
