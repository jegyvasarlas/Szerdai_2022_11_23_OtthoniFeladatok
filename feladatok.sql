--Mi MADAGASZKÁR fővárosa?
select fovaros from orszagok where orszag = 'MADAGASZKAR';
--Melyik ország fővárosa OUAGADOUGOU?
select orszag from orszagok where fovaros = 'OUAGADOUGOU';
--Melyik ország autójele a TT?
select orszag from orszagok where autojel = 'TT';
--Melyik ország pénzének jele az SGD?
select orszag from orszagok where penzjel = 'SGD';
--Melyik ország nemzetközi telefon-hívószáma a 61?
select orszag from orszagok where telefon = 61;
--Mekkora területű Monaco?
select terulet from orszagok where orszag = 'Monaco';
--Hányan laknak Máltán?
select nepesseg*1000 from orszagok where orszag = 'Malta';
--Mennyi Japán népsűrűsége?
select nepesseg*1000 / terulet as nepsuruseg from orszagok where orszag = 'Japan';
--Hány lakosa van a Földnek?
select sum(nepesseg*1000) from orszagok;
--Mennyi az országok területe összesen?
select sum(terulet) from orszagok;
--Mennyi az országok átlagos népessége?
select avg(nepesseg*1000) from orszagok;
--Mennyi az országok átlagos területe?
select avg(terulet) from orszagok;
--Mennyi a Föld népsűrűsége?
select sum(nepesseg*1000 / terulet) as altlag_nepsuruseg from orszagok;
--Hány 1.000.000 km2-nél nagyobb területű ország van?
select count(orszag) from orszagok where terulet>1000000;
--Hány 100 km2-nél kisebb területű ország van?
select count(orszag) from orszagok where terulet<100;
--Hány 20.000 főnél kevesebb lakosú ország van?
select count(orszag) from orszagok where nepesseg*1000<20000;
--Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél?
select count(orszag) from orszagok where nepesseg*1000<20000 or terulet<100;
--Hány ország területe 50.000 és 150.000 km2 közötti?
select count(orszag) from orszagok where terulet between 50000 and 150000;
--Hány ország lakossága 8 és 12 millió közötti?
select count(orszag) from orszagok where nepesseg*1000 between 8000000 and 12000000;
--Mely fővárosok népesebbek 20 millió főnél?
select fovaros from orszagok where nepesseg*1000 > 20000000;
--Mely országok népsűrűsége nagyobb 500 fő/km2-nél?
select orszag from orszagok where nepesseg*1000 / terulet > 500;
--Hány ország államformája köztársaság?
select orszag from orszagok where allamforma = 'köztársaság';
--Mely országok pénzneme a kelet-karib dollár?
select orszag from orszagok where penznem='kelet-karib dollár';
--Hány ország nevében van benne az "ORSZÁG" szó?
select count(orszag) from orszagok where orszag like '%ORSZAG%';
--Mely országokban korona a hivatalos fizetőeszköz?
select orszag from orszagok where orszagok.penznem like '%KORONA%';
--Mennyi Európa területe?
select sum(terulet) from orszagok where foldr_hely like '%Europa%';
--Mennyi Európa lakossága?
select sum(nepesseg*1000) from orszagok where foldr_hely like '%Europa%';
--Mennyi Európa népsűrűsége?
select sum(nepesseg*1000/terulet) from orszagok where foldr_hely like '%Europa%';
--Hány ország van Afrikában?
select count(orszag) from orszagok where foldr_hely like '%Afrika%';
--Mennyi Afrika lakossága?
select sum(nepesseg*1000) from orszagok where foldr_hely like '%Afrika%';
--Mennyi Afrika népsűrűsége?
select sum(nepesseg*1000 / terulet) from orszagok where foldr_hely like '%Afrika%';
--Melyek a szigetországok?
select orszag from orszagok where orszagok.orszag like '%sziget%';
--Mely országok államformája hercegség, vagy királyság?
select orszag from orszagok where orszagok.allamforma = 'hercegség' or allamforma = 'királyság';
--Hány országnak nincs autójelzése? 9
select count(orszag) from orszagok where autojel = '';
--Mennyi a váltószáma az aprópénznek azokban az országokban, ahol nem 100?
select orszag, valtopenz from orszagok where valtopenz not like '%100%';
--Hány ország területe kisebb Magyarországénál?
select count(orszag) from orszagok where terulet < (SELECT terulet from orszagok where orszag = 'Magyarorszag');
--Melyik a legnagyobb területű ország, és mennyi a területe?
select orszag, terulet from orszagok where orszagok.terulet = (SELECT MAX(terulet) from orszagok);
--Melyik a legkisebb területű ország, és mennyi a területe?
select orszag, terulet from orszagok where orszagok.terulet = (SELECT MIN(terulet) from orszagok);
--Melyik a legnépesebb ország, és hány lakosa van?
select orszag, nepesseg*1000 from orszagok where nepesseg*1000 = (SELECT MAX(nepesseg*1000) from orszagok);
--Melyik a legkisebb népességű ország, és hány lakosa van?
select orszag, nepesseg*1000 from orszagok where nepesseg*1000 = (SELECT MIN(nepesseg*1000) from orszagok);
--Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége?
select orszag, (nepesseg*1000/terulet) as nepsuruseg from orszagok where (nepesseg*1000/terulet) = (SELECT MAX((nepesseg*1000/terulet)) from orszagok);
--Melyik a legritkábban lakott ország, és mennyi a népsűrűsége?
select orszag, (nepesseg*1000/terulet) as nepsuruseg from orszagok where (nepesseg*1000/terulet) = (SELECT MIN((nepesseg*1000/terulet)) from orszagok);
--Melyik a legnagyobb afrikai ország és mekkora?
select orszag, terulet from orszagok where foldr_hely like '%afrika%' order by terulet desc limit 1;
--Melyik a legkisebb amerikai ország és hányan lakják?
select orszag, nepesseg*1000 as lakossag from orszagok where foldr_hely like '%amerika%' order by terulet asc limit 1;
--Melyik az első három legsűrűbben lakott "országméretű" ország (tehát nem város- vagy törpeállam)?
select orszag, nepesseg*1000/terulet as nepsuruseg from orszagok where terulet order by nepsuruseg desc limit 4;
--Melyik a világ hat legnépesebb fővárosa?
select fovaros, nepesseg*1000 as lakossag from orszagok order by lakossag desc limit 7;
--Melyik tíz ország egy főre jutó GDP-je a legnagyobb?
select orszag from orszagok order by gdp desc limit 10;
--Melyik tíz ország össz-GDP-je a legnagyobb?
select orszag from orszagok order by gdp*(nepesseg*1000) desc limit 10;
--Melyik országban a legszegényebbek az emberek?
select orszag from orszagok order by gdp asc limit 1 offset 1;
-- A feladat szerint Vatikan egy fore juto GDP-je 0, nem hinnem hogy akkora 'szegenyseg' lenne ott, ezert Etiopia
select orszag, gdp from orszagok order by gdp asc limit 2;
--Melyik a 40. legkisebb területű ország? VANUATU
select orszag from orszagok order by terulet asc limit 1 offset 39;
--Melyik a 15. legkisebb népsűrűségű ország? GRENADA
select orszag from orszagok order by nepesseg asc limit 1 offset 14;
--Melyik a 61. legnagyobb népsűrűségű ország? CHILE
select orszag from orszagok order by nepesseg desc limit 1 offset 60;
--Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez?
SET @MO_terulet = (select orszagok.terulet from orszagok where orszagok.orszag like 'MAGYARORSZAG');select orszag,terulet, round(abs(terulet-@MO_terulet),0) as 'Kulonbseg' from orszagok where orszagok.orszag not like 'MAGYARORSZAG' order by Kulonbseg limit 3;
--Az emberek hányadrésze él Ázsiában?
--A szárazföldek mekkora hányadát foglalja el Oroszország?
--Az emberek hány százaléka fizet euroval?
--Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének?
select MAX(gdp)/(select gdp from orszagok order by gdp asc limit 1 offset 1) from orszagok;
--A világ össz-GDP-jének hány százalékát adja az USA?
--A világ össz-GDP-jének hány százalékát adja az euroövezet?
--Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?
select orszag from orszagok where gdp > (select avg(gdp) from orszagok) and foldr_hely not like '%europa%' and foldr_hely not like '%amerika%';
--Milyen államformák léteznek Európában? 7
select count(distinct allamforma) from orszagok where foldr_hely like '%Europa%';
--Hányféle államforma létezik a világon? 24
select count(distinct allamforma) from orszagok;
--Hányféle fizetőeszközt használnak Európában az eurón kívül? 22
select count(penznem) from orszagok where penznem not like '%euro%' and foldr_hely like '%europa%';
--Mely pénznemeket használják több országban is?
select penznem from orszagok group by penznem having COUNT(1) != 1;
--Mely országok államformája egyedi?
select allamforma from orszagok group by allamforma having COUNT(1) = 1;