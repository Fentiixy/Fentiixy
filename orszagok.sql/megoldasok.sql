------ 1.
SELECT nev
FROM orszag
ORDER BY nev;

-- 2.
SELECT nev, fovaros
FROM orszag
ORDER BY nev;

-- 3.
SELECT nev, terulet
FROM orszag
ORDER BY terulet DESC;

-- 4.
SELECT nev, nepesseg
FROM orszag
ORDER BY nepesseg DESC;

-- 5.
SELECT COUNT(*) AS orszagok_szama
FROM orszag;

-- 6.
SELECT SUM(terulet) AS ossz_terulet
FROM orszag;

-- 7.
SELECT SUM(nepesseg) AS ossz_nepesseg
FROM orszag;

-- 8.
SELECT AVG(terulet) AS atlag_terulet
FROM orszag;

-- 9.
SELECT AVG(nepesseg) AS atlag_nepesseg
FROM orszag;

-- 10.
SELECT nev
FROM orszag
WHERE foldresz = 'Európa';

-- 11.
SELECT nev
FROM orszag
WHERE foldresz = 'Ázsia';

-- 12.
SELECT nev
FROM orszag
WHERE foldresz = 'Afrika';

-- 13.
SELECT nev
FROM orszag
WHERE foldresz = 'Amerika';

-- 14.
SELECT nev
FROM orszag
WHERE foldresz = 'Óceánia';

-- 15.
SELECT nev, terulet
FROM orszag
WHERE terulet > 1000000;

-- 16.
SELECT nev, nepesseg
FROM orszag
WHERE nepesseg > 100000000;

-- 17.
SELECT nev
FROM orszag
WHERE penznem = 'euró';

-- 18.
SELECT nev
FROM orszag
WHERE allamforma LIKE '%köztársaság%';

-- 19.
SELECT nev
FROM orszag
WHERE allamforma LIKE '%királyság%';

-- 20.
SELECT nev
FROM orszag
WHERE terulet BETWEEN 50000 AND 200000;

-- 21.
SELECT nev
FROM orszag
WHERE nepesseg BETWEEN 10000000 AND 50000000;

-- 22.
SELECT nev, (nepesseg / terulet) AS nepsuruseg
FROM orszag
ORDER BY nepsuruseg DESC;

23,
SELECT nev
FROM orszag
WHERE penznem = 'kelet-karibi dollár';

24,
SELECT COUNT(*) AS orszag_szam
FROM orszag
WHERE nev LIKE '%ORSZÁG%';

25,
SELECT nev
FROM orszag
WHERE penznem LIKE '%korona%';

---- 26.
SELECT SUM(terulet) AS europa_terulete
FROM orszag
WHERE foldresz = 'Európa';

---- 27.
SELECT SUM(nepesseg) AS europa_nepessege
FROM orszag
WHERE foldresz = 'Európa';

---- 28.
SELECT SUM(nepesseg) / SUM(terulet) AS europa_nepsuruseg
FROM orszag
WHERE foldresz = 'Európa';

---- 29.
SELECT COUNT(*) AS afrikai_orszagok_szama
FROM orszag
WHERE foldresz = 'Afrika';

-- 30.
SELECT SUM(nepesseg) AS afrika_nepessege
FROM orszag
WHERE foldresz = 'Afrika';

-- 31.
SELECT SUM(nepesseg) / SUM(terulet) AS afrika_nepsuruseg
FROM orszag
WHERE foldresz = 'Afrika';

-- 32.
SELECT nev
FROM orszag
WHERE terulet < 100000
AND foldresz IN ('Óceánia', 'Amerika', 'Európa', 'Ázsia', 'Afrika')
AND nev IN ('Izland','Málta','Ciprus','Japán','Madagaszkár','Új-Zéland');

--- 33.
SELECT nev
FROM orszag
WHERE allamforma LIKE '%királyság%'
   OR allamforma LIKE '%hercegség%';

--- 34.
SELECT COUNT(*) AS autojel_nelkuliek
FROM orszag
WHERE autojel IS NULL OR autojel = '';

---- 35.
SELECT nev, apro_valtoszam
FROM orszag
WHERE apro_valtoszam <> 100;

--- 36.
SELECT COUNT(*) AS kisebb_mint_magyarorszag
FROM orszag
WHERE terulet < (
    SELECT terulet FROM orszag WHERE nev = 'Magyarország'
);

-- 37.
SELECT nev, terulet
FROM orszag
WHERE terulet = (SELECT MAX(terulet) FROM orszag);

---- 38.
SELECT nev, terulet
FROM orszag
WHERE terulet = (SELECT MIN(terulet) FROM orszag);

--- 39.
SELECT nev, nepesseg
FROM orszag
WHERE nepesseg = (SELECT MAX(nepesseg) FROM orszag);

--- 40.
SELECT nev, nepesseg
FROM orszag
WHERE nepesseg = (SELECT MIN(nepesseg) FROM orszag);

-- 41.
SELECT nev, (nepesseg/terulet) AS nepsuruseg
FROM orszag
ORDER BY nepsuruseg DESC;

--- 42.
SELECT nev, terulet
FROM orszag
WHERE foldresz = 'Afrika'
AND terulet = (
    SELECT MAX(terulet) FROM orszag WHERE foldresz = 'Afrika'
);

--- 43.
SELECT nev, nepesseg
FROM orszag
WHERE foldresz = 'Amerika'
AND terulet = (
    SELECT MIN(terulet) FROM orszag WHERE foldresz = 'Amerika'
);

---- 44.
SELECT nev, (nepesseg/terulet) AS nepsuruseg
FROM orszag
WHERE terulet > 1000
ORDER BY nepsuruseg DESC
LIMIT 3;

----- 45.
SELECT nev, fovaros_nepesseg
FROM orszag
ORDER BY fovaros_nepesseg DESC
LIMIT 1;

---- 46.
SELECT nev, egyfore_juto_gdp
FROM orszag
ORDER BY egyfore_juto_gdp DESC
LIMIT 1;

---- 47.
SELECT nev, ossz_gdp
FROM orszag
ORDER BY ossz_gdp DESC
LIMIT 10;

--- 48.
SELECT nev, ossz_gdp
FROM orszag
ORDER BY ossz_gdp DESC
LIMIT 1;

-- 49.
SELECT nev, egyfore_juto_gdp
FROM orszag
ORDER BY egyfore_juto_gdp ASC
LIMIT 1;

--- 50.
SELECT nev, terulet
FROM orszag
ORDER BY terulet ASC
LIMIT 40;

--- 51.
SELECT nev, (nepesseg/terulet) AS nepsuruseg
FROM orszag
ORDER BY nepsuruseg ASC
LIMIT 15;

---- 52.
SELECT nev, nepesseg
FROM orszag
ORDER BY nepesseg DESC
LIMIT 61;

--- 53.
SELECT nev
FROM orszag
WHERE terulet BETWEEN 80000 AND 110000;

-- 54.
SELECT SUM(terulet) * 100.0 / (SELECT SUM(terulet) FROM orszag) AS europa_szazalek
FROM orszag
WHERE foldresz = 'Ázsia';

--- 55.
SELECT terulet * 100.0 / (SELECT SUM(terulet) FROM orszag) AS oroszorszag_szazalek
FROM orszag
WHERE nev = 'Oroszország';

---- 56.
SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orszag) AS eurot_hasznalok_szazalek
FROM orszag
WHERE penznem = 'euró';

----- 57.
SELECT 
(SELECT SUM(ossz_gdp) FROM orszag) /
(SELECT egyfore_juto_gdp FROM orszag ORDER BY egyfore_juto_gdp ASC LIMIT 1)
AS arany;

--- 58.
SELECT 
(SELECT SUM(ossz_gdp) FROM orszag WHERE nev = 'USA') * 100.0 /
(SELECT SUM(ossz_gdp) FROM orszag)
AS usa_szazalek;

-- 59.
SELECT 
(SELECT SUM(ossz_gdp) FROM orszag WHERE penznem = 'euró') * 100.0 /
(SELECT SUM(ossz_gdp) FROM orszag)
AS euroovezet_szazalek;

--- 60.
SELECT nev
FROM orszag
WHERE egyfore_juto_gdp > 30000
AND foldresz NOT IN ('Európa','Amerika');