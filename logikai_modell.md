LOGIKAI MODELL


Eladasok (Sales):

Eladás azonosítója (id)
Autó azonosítója (car_id)
Vevő azonosítója (customer_id)
Alkalmazott azonosítója (employee_id)
Eladás dátuma (eladas_datum)

Autók (Cars):

Autó azonosítója (id)
Autó neve (car_name)
Gyártási év (prod_year)
Szín azonosítója (color_id)
Leírás (description)
Ár (price)

Vevők (Customers):

Vevő azonosítója (id)
Vezetéknév (fname)
Keresztnév (lname)
Telefonszám (tel)
Email cím (email)
Születési dátum (dob)

Alkalmazottak (Employees):

Alkalmazott azonosítója (id)
Vezetéknév (fname)
Keresztnév (lname)
Telefonszám (tel)
Email cím (email)
Munkakör azonosítója (job_id)

Színek (Colors):

Szín azonosítója (id)
Szín (color)

Munkakörök (Jobs):

Munkakör azonosítója (id)
Munkakör (job_title)

Kapcsolatok:

Az "Eladasok" tábla a "Cars", "Customers" és "Employees" táblákkal van kapcsolatban az azonosítóikon keresztül.
Az "Autók" tábla a "Colors" táblával van kapcsolatban a "color_id" attribútumon keresztül.
Az "Employees" tábla a "Jobs" táblával van kapcsolatban a "job_id" attribútumon keresztül.
