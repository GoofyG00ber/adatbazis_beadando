Az adatbázis egy autókereskedés ügyviteli rendszere, amelyben nyomon követik az eladott autókat, az ügyfeleket és az alkalmazottakat. Az adatbázis több táblából áll, amelyek között kapcsolatok vannak létrehozva külső kulcsok segítségével.

A lekérdezések segítségével különböző üzleti elemzéseket és riportokat hajtanak végre az adatbázison. Például, meghatározhatják, hogy ki az a munkatárs, aki a legtöbb autót értékesítette, vagy az átlagos eladási árat színenként, vagy akár az alkalmazottak által befolyt összeget és az eladások számát is. A lekérdezések alkalmazása segít a vállalkozásnak jobban megérteni az üzleti teljesítményt és lehetőségeket biztosít a hatékonyabb üzleti döntések meghozatalára.

**Adatbázis Leírása**
Táblák

**Eladasok:**


id: Az eladás azonosítója

car_FK: Az eladott autó azonosítója

customer_FK: Az ügyfél azonosítója

employee_FK: Az alkalmazott azonosítója

eladas_datum: Az eladás dátuma

**Autók:**


car_id: Az autó azonosítója

car_name: Az autó neve

prod_year: Gyártási év

color_FK: Az autó színének azonosítója

description: Rövid leírás

price: Az autó ára

**Vevők:**

customer_id: Az ügyfél azonosítója

fname: Keresztnév

lname: Vezetéknév

tel: Telefonszám

email: Email cím

dob: Születési dátum

**Employee:**

employee_id: Az alkalmazott azonosítója

fname: Keresztnév

lname: Vezetéknév

tel: Telefonszám

email: Email cím

job_FK: Az állás azonosítója

**Colors:**

color_id: A szín azonosítója

color: A szín neve

**Jobs:**


job_id: Az állás azonosítója

job_title: Az állás megnevezése

Külső Kulcsok

**Eladasok tábla:**

car_FK -> Autók tábla (car_id)

customer_FK -> Vevők tábla (customer_id)

employee_FK -> Employee tábla (employee_id)

**Autók tábla:**

color_FK -> Colors tábla (color_id)

**Employee tábla:**

job_FK -> Jobs tábla (job_id)

**Lekérdezések**

Munkatársak által generált összes bevétel: Ez a lekérdezés összesíti az egyes alkalmazottak által eladott autók árát, majd végül összesíti az összes alkalmazott által generált bevételt. A végleges eredményt egy táblázatban jeleníti meg, ahol az alkalmazottak nevei mellett szerepel a hozzájuk rendelt bevétel.

Alkalmazottak által eladott autók száma és az átlagos eladási ár: Ez a lekérdezés két részből áll. Először kiszámolja, hogy egy alkalmazott hány autót értékesített, majd ezeket az adatokat összekapcsolja az alkalmazott nevével és az általa értékesített autók átlagos árával egy táblázatban.

Munkatársanként és autónként generált bevétel: Ez a lekérdezés csoportosítja az eladásokat munkatársak és autók szerint, majd összesíti a bevételt. Az eredményt egy táblázatban jeleníti meg, ahol az alkalmazottak nevei, az általuk értékesített autók és az ezekhez tartozó bevétel szerepel.

Autók árkategóriák szerinti bontása: Ez a lekérdezés az autók árait kategorizálja az áruk alapján, majd az átlagos árat számolja ki az egyes árkategóriákhoz. Az eredményt egy táblázatban jeleníti meg, ahol az autó neve, ára, árkategóriája és az átlagos ár szerepel.

A legtöbb autót értékesítő alkalmazott: Ez a lekérdezés megmutatja, hogy mely alkalmazott adta el a legtöbb autót, és hány darabot értékesített. Az eredményt egy táblázatban jeleníti meg, ahol az alkalmazott neve és az általa eladott autók száma szerepel.

Autók átlagos eladási ára szín szerint: Ez a lekérdezés az autók átlagos eladási árát színenként számolja ki. Az eredményt egy táblázatban jeleníti meg, ahol minden sor egy színt reprezentál, és az átlagos eladási árat mutatja.

Alkalmazottak által generált összbevétel és eladások száma: Ez a lekérdezés összesíti az alkalmazottak által generált összbevételt, valamint az általuk végzett eladások számát. Az eredményt egy táblázatban jeleníti meg, ahol az alkalmazott neve, az eladások száma és az összbevétel szerepel.

Az egyes autókra vásárlók számának meghatározása: Ez a lekérdezés meghatározza, hogy az egyes autókra hány vásárló adott le rendelést. Az eredményt egy táblázatban jeleníti meg, ahol az autó neve és a hozzá tartozó vásárlók száma szerepel.

A legtöbb autót vásárló vevő adatai: Ez a lekérdezés megmutatja, hogy mely vevő vásárolta meg a legtöbb autót, és hány darabot vásárolt. Az eredményt egy táblázatban jeleníti meg, ahol a vevő neve és az általa vásárolt autók száma szerepel.
