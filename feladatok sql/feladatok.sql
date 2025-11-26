#1
SELECT emberek.Nev, emberek.Netto
FROM Emberek
ORDER BY emberek.Nev;

#2
SELECT emberek.Nev
FROM Emberek
ORDER BY emberek.Netto DESC;

#3
SELECT emberek.Nev, emberek.Netto
FROM Emberek
ORDER BY emberek.GyerekSzam ASC;

#4
SELECT Emberek.Osztaly, emberek.Nev, emberek.Netto
FROM Emberek
ORDER BY emberek.Nev DESC, emberek.Netto ASC;

#5
SELECT Emberek.Nev, Emberek.GyerekSzam
FROM Emberek
ORDER BY Emberek.GyerekSzam DESC, Emberek.Nev ASC;

#6
SELECT Emberek.Nev, emberek.Beosztas, emberek.Osztaly, emberek.Netto
FROM Emberek
ORDER BY emberek.Beosztas DESC, emberek.Osztaly ASC, emberek.Netto ASC;

#7
SELECT emberek.Nev
FROM emberek
WHERE emberek.Beosztas = 'orvos'
ORDER BY emberek.Nev ASC;

#8
SELECT emberek.Nev
FROM emberek
WHERE emberek.Beosztas = 'ápoló'
  AND emberek.Nev LIKE '%Balázs';

#9
SELECT emberek.Nev, Emberek.GyerekSzam
FROM emberek
WHERE emberek.Nev LIKE 'F% Rita';

#10
SELECT Emberek.Nev, Emberek.Netto
FROM Emberek
WHERE Emberek.Nem = 'f'
ORDER BY Emberek.Netto DESC;

#11
SELECT Emberek.Nev
FROM Emberek
WHERE Emberek.netto > 40000
ORDER BY emberek.Nev ASC;

#12
SELECT Emberek.Nev
FROM Emberek
WHERE Emberek.Netto > 50000 AND Emberek.Netto < 110000
ORDER BY Emberek.Nev ASC;
