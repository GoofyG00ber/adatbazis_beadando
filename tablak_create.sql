CREATE TABLE Eladasok
(
  id integer not null IDENTITY(1,1) PRIMARY KEY,
  car_FK integer,
  customer_FK integer,
  employee_FK integer,
  eladas_datum date,
)

CREATE TABLE Autók
(
  car_id integer not null IDENTITY(1,1) PRIMARY KEY,
  car_name nvarchar(50),
  prod_year integer,
  color_FK integer not null,
  description nvarchar(300),
  price integer not null,
)

ALTER TABLE Eladasok
    ADD CONSTRAINT eladasok_autok_FK FOREIGN KEY ( car_FK )
        REFERENCES Autók ( car_id );

CREATE Table Vevők (
  customer_id integer not null IDENTITY(1,1) PRIMARY KEY,
  fname varchar(50),
  lname varchar(50),
  tel integer not null,
  email varchar(50),
  dob date,
)

ALTER TABLE Eladasok
    ADD CONSTRAINT eladasok_vevok_FK FOREIGN KEY ( customer_FK )
        REFERENCES Vevők ( customer_id );

CREATE Table Employee (
  employee_id integer IDENTITY(1,1) PRIMARY KEY,
  fname varchar(50),
  lname varchar(50),
  tel varchar(20),
  email varchar(50),
  job_FK integer not null,
)

ALTER TABLE Eladasok
    ADD CONSTRAINT eladasok_employee_FK FOREIGN KEY ( employee_FK )
        REFERENCES Employee ( employee_id );

CREATE Table Colors (
  color_id integer not null IDENTITY(1,1) PRIMARY KEY,
  color varchar(30),
)

ALTER TABLE Autók
    ADD CONSTRAINT car_colors_FK FOREIGN KEY ( color_FK )
        REFERENCES Colors ( color_id );

CREATE Table Jobs (
  job_id integer not null IDENTITY(1,1) PRIMARY KEY,
  job_title varchar(30),
)

ALTER TABLE Employee
    ADD CONSTRAINT employee_jobs_FK FOREIGN KEY ( job_fk )
        REFERENCES Jobs ( job_id );
