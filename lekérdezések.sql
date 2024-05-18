--1. Mennyi pénzt hoztak alkalmazottak külön, végén összesítve bevétel.
SELECT IIF(GROUPING(Employee.fname) = 1, 'Összesen', Employee.fname) AS 'Munkatárs neve',
       SUM(Autók.price) AS 'Bevétel'
FROM Eladasok 
JOIN Employee ON Eladasok.employee_FK = Employee.employee_id
JOIN Autók ON Eladasok.car_FK = Autók.car_id
GROUP BY ROLLUP(Employee.fname);

--2.Alkalmazottak által eladott autók száma, átlagos eladási ár alkalmazottanként. (Menő egymásba ágyazott lekérdezés)

SELECT 
    Emp.fname, Emp.lname, eladott_autok_szama, AVG(A.price) AS átlagos_eladási_ár
FROM (
    SELECT 
        Emp.employee_id, COUNT(*) AS eladott_autok_szama
    FROM Eladasok AS El
    JOIN Employee AS Emp ON El.employee_FK = Emp.employee_id
    GROUP BY Emp.employee_id
) AS eladott_autok
JOIN Employee AS Emp ON eladott_autok.employee_id = Emp.employee_id
JOIN Eladasok AS E ON E.employee_FK = Emp.employee_id
JOIN Autók AS A ON E.car_FK = A.car_id
GROUP BY Emp.fname, Emp.lname, eladott_autok_szama;

--3. Munkatársanként és autónként a bevétel összege.

SELECT IIF(GROUPING_ID(Employee.fname) = 1, 'Végösszeg', Employee.fname) AS 'Munkatárs neve',
       CASE 
           WHEN GROUPING_ID(Employee.fname, Autók.car_name) = 1 THEN 'Részösszeg'
           WHEN GROUPING_ID(Employee.fname, Autók.car_name) = 3 THEN 'Végösszeg'
           ELSE Autók.car_name
       END AS 'Autó neve',
       SUM(Autók.price) AS 'Bevétel'
FROM Eladasok 
JOIN Employee ON Eladasok.employee_FK = Employee.employee_id
JOIN Autók ON Eladasok.car_FK = Autók.car_id
GROUP BY ROLLUP(Employee.fname, Autók.car_name);

--4. Autók árkategóriákra bontva

SELECT car_name AS 'Autó neve', 
       price AS 'Ár',
       CASE 
           WHEN price < 1000000 THEN 'Olcsó'
           WHEN price >= 1000000 AND price < 3000000 THEN 'Nem annyira olcsó'
           WHEN price >= 3000000 THEN 'Drága'
       END AS 'Árkategória',
       AVG(price) OVER (PARTITION BY
           CASE 
               WHEN price < 1000000 THEN 'Olcsó'
               WHEN price >= 1000000 AND price < 3000000 THEN 'Nem annyira olcsó'
               WHEN price >= 3000000 THEN 'Drága'
           END) AS 'Árkategória átlagár'
FROM Autók;

-- 5. Ki adta el a legtöbb autót és hány darabot adott el
SELECT TOP 1 
    Emp.fname, Emp.lname, COUNT(*) AS eladott_autok_szama
FROM Eladasok AS El
JOIN Employee AS Emp ON El.employee_FK = Emp.employee_id
GROUP BY Emp.fname, Emp.lname
ORDER BY COUNT(*) DESC;

-- 6. Autók átlagos eladási ára színünk szerint
SELECT 
    CASE 
        WHEN GROUPING(C.color) = 1 THEN 'Összes szín' 
        ELSE C.color 
    END AS autó_színe,
    AVG(A.price) AS átlagos_eladási_ár
FROM Autók AS A
JOIN Colors AS C ON A.color_FK = C.color_id
GROUP BY C.color
WITH ROLLUP;

-- 7. Alkalmazottak által befolyt pénz és eladások száma
SELECT 
    Emp.fname AS alkalmazott_neve,
    COUNT(*) AS eladások_száma,
    SUM(A.price) AS befolyt_pénz
FROM Eladasok AS E
JOIN Autók AS A ON E.car_FK = A.car_id
JOIN Employee AS Emp ON E.employee_FK = Emp.employee_id
GROUP BY Emp.fname
WITH ROLLUP;

-- 8. Az egyes autókra vásárlók számának meghatározása
SELECT 
    A.car_name AS autó_neve,
    COUNT(*) AS vásárlók_száma
FROM Eladasok AS E
JOIN Autók AS A ON E.car_FK = A.car_id
GROUP BY A.car_name
WITH ROLLUP;

-- 9. A legtöbb autót vásárló vevő adatai
SELECT TOP 1
    V.fname + ' ' + V.lname AS vevő_neve,
    COUNT(*) AS vásárlások_száma
FROM Eladasok AS E
JOIN Vevők AS V ON E.customer_FK = V.customer_id
GROUP BY V.fname, V.lname
ORDER BY COUNT(*) DESC;




