CREATE TABLE Eladasok
(
  id int IDENTITY(1,1) PRIMARY KEY,
  car_id int,
  customer_id int,
  employee_id int,
  eladas_datum date,
)

CREATE TABLE Autók
(
  id int IDENTITY(1,1) PRIMARY KEY,
  car_name nvarchar(50),
  prod_year int,
  color_id int,
  description nvarchar(300),
  price int,
)

CREATE Table Vevők (
  id int IDENTITY(1,1) PRIMARY KEY,
  fname varchar(50),
  lname varchar(50),
  tel varchar(20),
  email varchar(50),
  dob date,
)

CREATE Table Employee (
  id int IDENTITY(1,1) PRIMARY KEY,
  fname varchar(50),
  lname varchar(50),
  tel varchar(20),
  email varchar(50),
  job_id int,
)

CREATE Table Colors (
  id int IDENTITY(1,1) PRIMARY KEY,
  color varchar(30),
)

CREATE Table Jobs (
  id int IDENTITY(1,1) PRIMARY KEY,
  job_title varchar(30),
)