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