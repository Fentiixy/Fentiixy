1,SELECT ugyfel.nev
FROM ugyfel
ORDER BY 1 ASC;

2,SELECT ugyfel.nev, year(now())-ugyfel.szulev AS "eletkor"
FROM ugyfel
WHERE ugyfel.orsz = "H"
ORDER BY eletkor;

3,SELECT ugyfel.nev, ugyfel.irszam
FROM ugyfel
WHERE ugyfel.irszam LIKE "2%";

4,SELECT SUM(befiz.osszeg) AS "Összes befizetés"
FROM befiz;

5,SELECT AVG(befiz.osszeg) AS "Átlagos befizetés"
FROM befiz

6,SELECT MIN(befiz.osszeg) AS " legkisebb" , MAX(befiz.osszeg) AS "legnagyobb"
FROM befiz;

7,SELECT COUNT(befiz.osszeg) AS "befizetesek"
FROM befiz

8,SELECT befiz.datum, ugyfel.nev, befiz.osszeg
FROM ugyfel, befiz
WHERE ugyfel.azon = befiz.azon AND nev="Török Bálint"

9,SELECT ugyfel.nev, SUM(befiz.osszeg) AS "Összesen"
FROM ugyfel, befiz
WHERE nev="Nagy Károly"

10,SELECT SUM(befiz.osszeg) AS "Osszes befizetés"
FROM befiz, ugyfel
WHERE befiz.azon = ugyfel.azon AND ugyfel.orsz <> "H"