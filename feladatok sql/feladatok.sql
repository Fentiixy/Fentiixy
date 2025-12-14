1. Feladat: 
SELECT emberek.nev, emberek.netto
FROM emberek
ORDER BY emberek.nev;

2. Feladat:
SELECT emberek.nev, emberek.netto
FROM emberek
ORDER BY emberek.netto DESC;

3. Feladat:
SELECT emberek.nev, emberek.netto, emberek.gyerekszam
FROM emberek
ORDER BY emberek.gyerekszam ASC;

4. Feladat:
SELECT emberek.nev, emberek.netto, emberek.osztaly
FROM emberek
ORDER BY emberek.gyerekszam DESC, emberek.netto ASC;

5. Feladat:
SELECT emberek.gyerekszam, emberek.nev
FROM emberek
ORDER BY emberek.gyerekszam DESC, emberek.nev;

6.Feladat:
SELECT emberek.nev, emberek.beosztas, emberek.osztaly, emberek.netto
FROM emberek
ORDER BY emberek.beosztas DESC, emberek.osztaly ASC, emberek.netto ASC;

7.Feladat:
SELECT emberek.nev, emberek.beosztas
FROM emberek
WHERE emberek.beosztas = "orvos"
ORDER BY emberek.nev ASC

8.Feladat:
SELECT emberek.nev, emberek.beosztas
FROM emberek
WHERE emberek.beosztas = "ápoló" AND emberek.nev LIKE "%Balázs";

9.Feladat:
SELECT emberek.nev, emberek.gyerekszam
FROM emberek
WHERE emberek.nev LIKE "F%Rita"

10.Feladat:
SELECT emberek.nev, emberek.nem, emberek.netto
FROM emberek
WHERE emberek.nem = "f"
ORDER BY emberek.netto DESC

11.Feladat:
SELECT emberek.nev, emberek.netto
FROM emberek
WHERE emberek.netto > 40000
ORDER BY emberek.nev

12.Feladat:
SELECT emberek.nev, emberek.netto
FROM emberek
WHERE emberek.netto < 110000 AND emberek.netto > 50000 

13.Feladat:
SELECT emberek.nev, emberek.nem, emberek.gyerekszam
FROM emberek
WHERE emberek.nem = "f" AND emberek.gyerekszam > 1

14.Feladat:
SELECT emberek.nev, emberek.nem, emberek.beosztas, emberek.netto
FROM emberek
WHERE emberek.nem = "n" AND emberek.netto < 45000 AND emberek.beosztas = "ápoló"
ORDER BY emberek.netto DESC;

15.Feladat:
SELECT emberek.nev, emberek.osztaly, emberek.gyerekszam
FROM emberek
WHERE emberek.osztaly = "sebészet" AND emberek.gyerekszam = 0;

16.Feladat:
SELECT emberek.nev, emberek.osztaly, emberek.gyerekszam, emberek.nem
FROM emberek
WHERE emberek.osztaly = "gégészet" AND emberek.nem = "n"
ORDER BY emberek.gyerekszam DESC

17.Feladat:
SELECT emberek.nev, emberek.nem
FROM emberek
WHERE emberek.nem = "f" AND emberek.nev LIKE "%t%";

18.Feladat:
SELECT emberek.nev, emberek.osztaly, emberek.beosztas
FROM emberek
WHERE emberek.osztaly = "gégészet" AND emberek.beosztas = "orvos" OR emberek.osztaly = "sebészet"

19.Feladat:
SELECT emberek.nev, emberek.netto
FROM emberek
WHERE emberek.netto > 100000 OR emberek.netto < 40000

20.Feladat:
SELECT emberek.nev, emberek.osztaly, emberek.gyerekszam
FROM emberek
WHERE emberek.gyerekszam < 2 OR emberek.osztaly = "sebészet"

21.Feladat:
SELECT emberek.nev, emberek.beosztas, emberek.osztaly, emberek.netto
FROM emberek
WHERE emberek.beosztas = "ápoló" AND emberek.netto > 39000
   OR emberek.osztaly = "szülészet";

22.Feladat:
SELECT emberek.nev, emberek.beosztas
FROM emberek
WHERE emberek.nev LIKE "%Rita%" AND emberek.beosztas = "orvos"
   OR emberek.beosztas = "karbantartó";


23.Feladat:
SELECT emberek.nev, emberek.beosztas, emberek.nem
FROM emberek
WHERE emberek.nem = "f"
  AND emberek.beosztas = "orvos" OR emberek.beosztas = "ápoló";


24.Feladat:
SELECT SUM(emberek.netto) AS "Osszeg"
FROM emberek;


25.Feladat:
SELECT AVG(emberek.netto) AS "Atlag"
FROM emberek;
