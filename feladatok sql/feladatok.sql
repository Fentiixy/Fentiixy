#1
SELECT emberek.Nev, emberek.netto
FROM emberek
ORDER BY Nev;

#2
SELECT emberek.Nev, emberek.netto
FROM emberek
ORDER BY emberek.netto DESC

#3
SELECT emberek.Nev, emberek.gyerekszam, emberek.netto
FROM emberek
ORDER BY emberek.gyerekszam ASC;