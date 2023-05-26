CREATE TABLE IF NOT EXISTS cities (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS companies (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(155) NOT NULL,
    cityId INT NOT NULL
);
CREATE TABLE IF NOT EXISTS industries (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(155) NOT NULL
);
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    resume VARCHAR(255) NULL,
    type ENUM('student', 'employer') NOT NULL
);
CREATE TABLE IF NOT EXISTS feedbacks (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    internshipId INT NOT NULL,
    comment VARCHAR(255) NOT NULL,
    rating SMALLINT(1) NOT NULL
);
CREATE TABLE IF NOT EXISTS internships (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(155) NOT NULL,
    description VARCHAR(255) NOT NULL,
    companyId INT NOT NULL,
    userId INT NOT NULL,
    industryId INT NOT NULL,
    cityId INT NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    payment TINYINT NULL,
    status ENUM('active', 'inactive') NOT NULL
);
CREATE TABLE IF NOT EXISTS user_internships (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    internshipId INT NOT NULL,
    status ENUM('pending', 'accepted', 'rejected') NOT NULL
);
CREATE TABLE IF NOT EXISTS employer_companies (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    companyId INT NOT NULL
);
CREATE TABLE IF NOT EXISTS company_industries (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    companyId INT NOT NULL,
    industryId INT NOT NULL
);

ALTER TABLE companies 
    ADD CONSTRAINT fk_company_city FOREIGN KEY (cityId) REFERENCES cities(id);
    
ALTER TABLE feedbacks 
    ADD CONSTRAINT fk_feedback_user FOREIGN KEY (userId) REFERENCES users(id),
    ADD CONSTRAINT fk_feedback_internship FOREIGN KEY (internshipId) REFERENCES internships(id);

ALTER TABLE internships  
    ADD CONSTRAINT fk_internship_city FOREIGN KEY (cityId) REFERENCES cities(id),
    ADD CONSTRAINT fk_internship_industry FOREIGN KEY (industryId) REFERENCES industries(id),
    ADD CONSTRAINT fk_internship_company FOREIGN KEY (companyId) REFERENCES companies(id),
    ADD CONSTRAINT fk_internship_employer FOREIGN KEY (userId) REFERENCES users(id);

ALTER TABLE company_industries    
    ADD CONSTRAINT fk_company_industry FOREIGN KEY (companyId) REFERENCES companies(id),
    ADD CONSTRAINT fk_industry_company FOREIGN KEY (industryId) REFERENCES industries(id);

ALTER TABLE user_internships 
    ADD CONSTRAINT fk_user_internship_user FOREIGN KEY (userId) REFERENCES users(id),
    ADD CONSTRAINT fk_user_internship_internship FOREIGN KEY (internshipId) REFERENCES internships(id);

ALTER TABLE employer_companies
    ADD CONSTRAINT fk_employer_company_user FOREIGN KEY (userId) REFERENCES users(id),
    ADD CONSTRAINT fk_employer_company_company FOREIGN KEY (companyId) REFERENCES companies(id);