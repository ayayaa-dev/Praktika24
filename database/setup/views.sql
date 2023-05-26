# Представление списка стажировок с информацией о компаниях, 
# включая название стажировки, название компании и город:

CREATE VIEW IF NOT EXISTS InternshipInfoView AS
SELECT i.id, i.name AS title, i.description AS description,
	IFNULL((SELECT AVG(rating) FROM feedbacks GROUP BY internshipId), 0) AS avg_rating,
	CONCAT(u.name, ' ', u.surname) AS employer_name, u.email AS employer_email, 
    co.name AS company_name, ci.name AS city_name
FROM internships i
JOIN users u ON i.userId = u.id
JOIN cities ci ON i.cityId = ci.id
JOIN companies co ON i.companyId = co.id
WHERE i.status = 'active' AND u.type = 'employer';

# ------------------------------------------------------------------
# Представление списка студентов с информацией о загруженных резюме, 
# включая имя студента, электронную почту и наличие резюме:

CREATE VIEW IF NOT EXISTS StudentResumeView AS
SELECT id, CONCAT(name, ' ', surname) AS student_name, 
	email, IFNULL(resume, 0) AS has_resume
FROM users
WHERE users.type = 'student';

# ------------------------------------------
# Представление количества поданных заявок

CREATE VIEW IF NOT EXISTS InternshipRequestCount AS
SELECT id, name, description,
(SELECT COUNT(status) 
    FROM user_internships 
    WHERE status = 'pending' 
    AND internships.id = internshipId) AS pending_count, 
(SELECT COUNT(status)
    FROM user_internships 
    WHERE status = 'accepted' 
    AND internships.id = internshipId) AS accepted_count
FROM internships
GROUP BY id;

#--------------------------------------------------