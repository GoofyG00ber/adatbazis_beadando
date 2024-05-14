INSERT INTO Colors (color)
VALUES ('kék'),('piros'),('sárga'),('fehér')

INSERT INTO Autók (car_name, prod_year, color_id, description, price)
VALUES ('Suzuki Swift', 2000, 3, 'nagyon menő járgány', 275000),
	   ('Mitsubishi', 1990, 1, 'szép', 565000),
       ('Toyota Corolla', 2004, 5, 'csúnya', 2345000),
       ('Lada 1500', 2011, 4, 'kopott', 127500),
       ('Suzuki Szamuráj', 2021, 2, 'ütött kopott', 2506400)
       
INSERT INTO Vevők (fname, lname, tel, email, dob)
VALUES ('Ferenc', 'Kis', 0642069, 'asd@123.hu', '2000-11-11'),
	   ('Sanyi', 'Nagy', 06420444, 'asdf@1223.hu', '1800-01-04'),
	   ('Adam', 'Mák', 06420420, 'asd@12fffff3.hu', '1999-07-21')
       
INSERT INTO Employee (fname, lname, tel, email, job_id)
VALUES ('Ákos', 'Kocka', 0677766, 'auto3.hu', 1),
	   ('András', 'Király', 0677777, 'auto2.hu', 1),
	   ('Etel', 'Rizs', 064888888, 'auto1.hu', 2)
       
INSERT INTO Jobs (job_title)
VALUES ('sales_rep'),('cleaner'),('manager')
	   
INSERT INTO Eladasok (car_id, customer_id, employee_id, eladas_datum)
VALUES (1,2,3,'2024-03-01'),(2,2,2,'2024-01-02'),(3,3,1,'2023-12-05'),(1,1,2,'2024-05-12')