INSERT INTO cities (name) VALUES 
    ('Tallinn'),
    ('Kohtla-Järve'),
    ('Viljandi'),
    ('Rakvere'),
    ('Maardu'),
    ('Kuressaare'),
    ('Sillamäe'),
    ('Valga'),
    ('Võru'),
    ('Jõhvi'),
    ('Haapsalu'),
    ('Keila'),
    ('Paide'),
    ('Elva'),
    ('Saue'),
    ('Põlva'),
    ('Tapa'),
    ('Jõgeva'),
    ('Rapla'),
    ('Kiviõli'),
    ('Türi'),
    ('Põltsamaa'),
    ('Sindi'),
    ('Paldiski'),
    ('Kärdla'),
    ('Kunda'),
    ('Tõrva'),
    ('Narva-Jõesuu'),
    ('Kehra'),
    ('Loksa'),
    ('Räpina'),
    ('Otepää'),
    ('Tamsalu'),
    ('Kilingi-Nõmme'),
    ('Karksi-Nuia'),
    ('Antsla'),
    ('Võhma'),
    ('Mustvee'),
    ('Lihula'),
    ('Suure-Jaani'),
    ('Abja-Paluoja'),
    ('Püssi'),
    ('Mõisaküla'),
    ('Kallaste');

INSERT INTO companies (name, email, address, cityId) VALUES 
    ('ATEA AS','jobs@atea.ee','Järvevana tee 7b, 10138 Tallinn', 1),
    ('Foxway OÜ','jobs.estonia@foxway.com','Killustiku Põik 1, Vahi, 60534 Tartu maakond', 2),
    ('Rademar OÜ','triinu.kaas@rademar.ee','Lai 11, Pärnu, 80010 Pärnu maakond', 4),
    ('Farmi Piimatööstus AS','personal@farmi.ee','Linda tänav 15, Jõhvi, 41536 Ida-Viru maakond', 13),
    ('AS Bestnet','kandideeri@tiki.ee','Rae 4, Paldiski, 76805 Harju maakond', 27),
    ('Swedbank AS',' info@swedbank.ee','Liivalaia 8, 15040 Tallinn', 1);

INSERT INTO industries (name) VALUES 
    ('Finance'), ('IT'), ('Production'), ('Retail Market');

INSERT INTO company_industries (companyId, industryId) VALUES 
    (1,2), (2,2), (3,4), (4,3),
    (5,2), (6,1), (6,2);

INSERT INTO users (name, surname, email, username, password, type, resume) VALUES 
    ('Jelena', 'Kuzmina', 'jelena.kuzmina@ivkhk.ee', 'jelena228007', '12345', NULL, 'employer'),
    ('Maksim', 'Dzjubenko', 'maksim.dzjubenko@ivkhk.ee', 'mak7ilenin', '12345', '/private/resume/gfsigfn4554_23254.pdf', 'student'),
    ('Daniel', 'Monjane', 'mtalhead@ivkhk.ee', 'mtalhead', '12345', '/private/resume/kjdgndjkfghdgnkjdnojk.pdf', 'student'),
    ('Jegor', 'Golub', 'golubika@gmail.com', 'golub227', '12345', NULL, 'employer');

INSERT INTO internships (name, description, companyId, userId, industryId, cityId, startDate, endDate, payment, status) VALUES
    ('BULKADMIN', 'Nothing', 6, 1, 1, 1, '2023-05-01', '2023-05-31', 1, 'active'),
    ('Front-end developer', 'Lorem ipsum?', 4, 4, 3, 5, '2022-10-04', '2023-07-20', 0, 'active');

INSERT INTO user_internships (userId, internshipId, status) VALUES
    (3, 1, 'pending'),
    (3, 1, 'rejected'),
    (4, 1, 'accepted'),
    (3, 2, 'pending');