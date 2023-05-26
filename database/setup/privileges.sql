# --- Remove all users to avoid errors ---
DROP USER IF EXISTS 'SUPERADMIN'@'localhost',
'ADMIN'@'localhost', 
'MODERATOR'@'localhost',
'EMPLOYER'@'localhost', 
'STUDENT'@'localhost';

# --- Accounts ---
CREATE USER IF NOT EXISTS 'SUPERADMIN'@'localhost' IDENTIFIED BY '12345';
CREATE USER IF NOT EXISTS 'MODERATOR'@'localhost' IDENTIFIED BY '12345';
CREATE USER IF NOT EXISTS 'ADMIN'@'localhost' IDENTIFIED BY '12345';
CREATE USER IF NOT EXISTS 'STUDENT'@'localhost' IDENTIFIED BY '12345';
CREATE USER IF NOT EXISTS 'EMPLOYER'@'localhost' IDENTIFIED BY '12345';

# --- User Grants ---
# SUPERADMIN AND ADMIN
GRANT ALL PRIVILEGES ON praktika24.* TO 'SUPERADMIN'@'localhost';
GRANT ALL PRIVILEGES ON praktika24.* TO 'ADMIN'@'localhost';

# MODERATOR
GRANT ALL ON praktika24.users TO 'MODERATOR'@'localhost';
GRANT SELECT ON praktika24.cities TO 'MODERATOR'@'localhost';
GRANT SELECT ON praktika24.companies TO 'MODERATOR'@'localhost';
GRANT SELECT ON praktika24.company_industries TO 'MODERATOR'@'localhost';
GRANT SELECT ON praktika24.employer_companies TO 'MODERATOR'@'localhost';
GRANT ALL ON praktika24.feedbacks TO 'MODERATOR'@'localhost';
GRANT SELECT ON praktika24.industries TO 'MODERATOR'@'localhost';
GRANT SELECT, UPDATE(status) ON praktika24.internships TO 'MODERATOR'@'localhost';

# STUDENT
GRANT ALL ON praktika24.users TO 'STUDENT'@'localhost';
GRANT SELECT ON praktika24.cities TO 'STUDENT'@'localhost';
GRANT SELECT ON praktika24.companies TO 'STUDENT'@'localhost';
GRANT SELECT ON praktika24.company_industries TO 'STUDENT'@'localhost';
GRANT SELECT ON praktika24.employer_companies TO 'STUDENT'@'localhost';
GRANT ALL ON praktika24.feedbacks TO 'STUDENT'@'localhost';
GRANT SELECT ON praktika24.industries TO 'STUDENT'@'localhost';
GRANT SELECT ON praktika24.internships TO 'STUDENT'@'localhost';
GRANT SELECT, INSERT ON praktika24.user_internships TO 'STUDENT'@'localhost';

# EMPLOYER
GRANT ALL ON praktika24.users TO 'EMPLOYER'@'localhost';
GRANT SELECT ON praktika24.cities TO 'EMPLOYER'@'localhost';
GRANT SELECT ON praktika24.companies TO 'EMPLOYER'@'localhost';
GRANT SELECT ON praktika24.company_industries TO 'EMPLOYER'@'localhost';
GRANT SELECT ON praktika24.employer_companies TO 'EMPLOYER'@'localhost';
GRANT ALL ON praktika24.feedbacks TO 'EMPLOYER'@'localhost';
GRANT SELECT ON praktika24.industries TO 'EMPLOYER'@'localhost';
GRANT ALL ON praktika24.internships TO 'EMPLOYER'@'localhost';
GRANT SELECT, UPDATE(status) ON praktika24.user_internships TO 'EMPLOYER'@'localhost';