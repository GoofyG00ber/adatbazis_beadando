-- Adatbázishoz kapcsolódó lekérdezések

-- 1. Ki adta el a legtöbb autót és hány darabot adott el
SELECT TOP 1 E.fname, E.lname, COUNT(*) AS eladott_autok_szama
FROM Eladasok AS El
JOIN Employee AS E ON El.employee_id = E.id
GROUP BY E.fname, E.lname
ORDER BY COUNT(*) DESC;

-- 2. Autók átlagos eladási ára színünk szerint
SELECT 
    CASE WHEN GROUPING(C.color) = 1 THEN 'Összes szín' ELSE C.color END AS autó_színe,
    AVG(A.price) AS átlagos_eladási_ár
FROM Autók AS A
JOIN Colors AS C ON A.color_id = C.id
GROUP BY C.color
WITH ROLLUP;

-- 3. Alkalmazottak által befolyt pénz és eladások száma
SELECT 
    Emp.fname + ' ' + Emp.lname AS alkalmazott_neve,
    COUNT(*) AS eladások_száma,
    SUM(A.price) AS befolyt_pénz
FROM Eladasok AS E
JOIN Autók AS A ON E.car_id = A.id
JOIN Employee AS Emp ON E.employee_id = Emp.id
GROUP BY Emp.fname, Emp.lname;

-- 4. Az egyes autókra vásárlók számának meghatározása
SELECT 
    A.car_name AS autó_neve,
    COUNT(*) AS vásárlók_száma
FROM Eladasok AS E
JOIN Autók AS A ON E.car_id = A.id
GROUP BY A.car_name;

-- 5. A legtöbb autót vásárló vevő adatai
SELECT TOP 1
    V.fname + ' ' + V.lname AS vevő_neve,
    COUNT(*) AS vásárlások_száma
FROM Eladasok AS E
JOIN Vevők AS V ON E.customer_id = V.id
GROUP BY V.fname, V.lname
ORDER BY vásárlások_száma DESC