CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

INSERT INTO employee (name, birthday, email)
VALUES 
('John Doe', '1990-01-15', 'john.doe@example.com'),
('Jane Smith', '1985-05-20', 'jane.smith@example.com'),
('Alice Johnson', '1992-08-10', 'alice.johnson@example.com'),
('Bob Brown', '1980-03-25', 'bob.brown@example.com'),
('Charlie White', '1995-12-05', 'charlie.white@example.com');

-- 1. name sütununu güncelle
UPDATE employee
SET name = 'Updated Name'
WHERE id = 1;

-- 2. birthday sütununu güncelle
UPDATE employee
SET birthday = '2000-01-01'
WHERE id = 2;

-- 3. email sütununu güncelle
UPDATE employee
SET email = 'updated.email@example.com'
WHERE id = 3;

-- 4. name ve birthday sütunlarını birlikte güncelle
UPDATE employee
SET name = 'Updated Name 2', birthday = '1999-12-31'
WHERE id = 4;

-- 5. name ve email sütunlarını birlikte güncelle
UPDATE employee
SET name = 'Final Update', email = 'final.update@example.com'
WHERE id = 5;

-- 1. id sütununa göre sil
DELETE FROM employee
WHERE id = 6;

-- 2. birthday sütununa göre sil
DELETE FROM employee
WHERE birthday = '1992-08-10';

-- 3. email sütununa göre sil
DELETE FROM employee
WHERE email = 'bob.brown@example.com';

-- 4. name sütununa göre sil
DELETE FROM employee
WHERE name = 'Charlie White';

-- 5. birden fazla sütuna göre sil
DELETE FROM employee
WHERE name = 'Jane Smith' AND email = 'jane.smith@example.com';

select * from employee