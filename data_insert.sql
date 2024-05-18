INSERT INTO Colors (color)
VALUES ('kék'), 
('piros'), 
('sárga'), 
('fehér'), 
('zöld'),
('fekete'),
('narancssárga'),
('lila');

INSERT INTO Autók (car_name, prod_year, color_FK, description, price)
VALUES ('Suzuki Swift', 2000, 3, 'nagyon menő járgány', 275000),
('Mitsubishi', 1990, 1, 'szép', 565000),
('Toyota Corolla', 2004, 5, 'csúnya', 2345000),
('Lada 1500', 2011, 4, 'kopott', 127500),
('Suzuki Szamuráj', 2021, 2, 'ütött kopott', 2506400),
('Ford Focus', 2018, 6, 'szép autó', 3500000),
('Chevrolet Camaro', 2022, 7, 'gyors autó', 4500000),
('BMW X5', 2019, 8, 'luxus autó', 6500000);
       
INSERT INTO Vevők (fname, lname, tel, email, dob)
VALUES ('Ferenc', 'Kis', '0642069', 'asd@123.hu', '2000-11-11'),
('Sanyi', 'Nagy', '06420444', 'asdf@1223.hu', '1800-01-04'),
('Adam', 'Mák', '06420420', 'asd@12fffff3.hu', '1999-07-21'),
('Béla', 'Kovács', '0620123456', 'bela@kovacs.hu', '1985-05-15'),
('Éva', 'Szabó', '0630987654', 'eva@szabo.hu', '1990-12-01'),
('Gábor', 'Nagy', '0670123456', 'gabor@nagy.hu', '1975-03-22');
       
       INSERT INTO Jobs (job_title)
VALUES ('sales_rep'), 
('cleaner'), 
('manager'),
('mechanic'),
('accountant'),
('receptionist');

INSERT INTO Employee (fname, lname, tel, email, job_FK)
VALUES ('Ákos', 'Kocka', '0677766', 'auto3.hu', 1),
('András', 'Király', '0677777', 'auto2.hu', 1),
('Etel', 'Rizs', '064888888', 'auto1.hu', 3),
('József', 'Németh', '0687654321', 'jozsef@nemeth.hu', 4),
('Mária', 'Tóth', '0671122334', 'maria@toth.hu', 5),
('Péter', 'Szilágyi', '0660987654', 'peter@szilagyi.hu', 6);
        
INSERT INTO Eladasok (car_FK, customer_FK, employee_FK, eladas_datum)
VALUES 
(1, 2, 1, '2024-03-01'),
(2, 2, 2, '2024-01-02'),
(3, 3, 3, '2023-12-05'),
(4, 1, 3, '2024-05-12'),
(5, 4, 4, '2024-02-20'),
(6, 5, 5, '2024-04-15'),
(7, 6, 6, '2024-05-10'),
(8, 1, 1, '2024-03-30');
