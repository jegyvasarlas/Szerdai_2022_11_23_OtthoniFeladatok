--Mi MADAGASZKÁR fővárosa? ANTANANARIVO
select fovaros from orszagok where orszag = 'MADAGASZKAR';
--Melyik ország fővárosa OUAGADOUGOU? BURKINA FASO
select orszag from orszagok where fovaros = 'OUAGADOUGOU';
--Melyik ország autójele a TT? TRINIDAD ÉS TOBAGO
select orszag from orszagok where autojel = 'TT';
--Melyik ország pénzének jele az SGD? SZINGAPÚR
select orszag from orszagok where penzjel = 'SGD';
--Melyik ország nemzetközi telefon-hívószáma a 61? AUSZTRÁLIA
select orszag from orszagok where telefon = 61;
--Mekkora területű Monaco? 1.95 km2
select terulet from orszagok where orszag = 'Monaco';
--Hányan laknak Máltán? 392000 fo
select nepesseg*1000 from orszagok where orszag = 'Malta';
--Mennyi Japán népsűrűsége? 342.3031 fo/km2
select nepesseg*1000 / terulet as nepsuruseg from orszagok where orszag = 'Japan';
--Hány lakosa van a Földnek? 7076338000 fo
select sum(nepesseg*1000) from orszagok;
--Mennyi az országok területe összesen?
select sum(terulet) from orszagok;
--Mennyi az országok átlagos népessége? 36475969.0722 fo/km2
select avg(nepesseg*1000) from orszagok;
--Mennyi az országok átlagos területe? 688650.642577 km2
select avg(terulet) from orszagok;
--Mennyi a Föld népsűrűsége? 51352.1151 fo/km2
select sum(nepesseg*1000 / terulet) as altlag_nepsuruseg from orszagok;
--Hány 1.000.000 km2-nél nagyobb területű ország van? 29
select count(orszag) from orszagok where terulet>1000000;
--Hány 100 km2-nél kisebb területű ország van? 5
select count(orszag) from orszagok where terulet<100;
--Hány 20.000 főnél kevesebb lakosú ország van? 4
select count(orszag) from orszagok where nepesseg*1000<20000;
--Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél? 6
select count(orszag) from orszagok where nepesseg*1000<20000 or terulet<100;
--Hány ország területe 50.000 és 150.000 km2 közötti? 35
select count(orszag) from orszagok where terulet between 50000 and 150000;
--Hány ország lakossága 8 és 12 millió közötti? 23
select count(orszag) from orszagok where nepesseg*1000 between 8000000 and 12000000;
--Mely fővárosok népesebbek 20 millió főnél?
--MADRID
--PÁRIZS
--LONDON
--BERLIN
--RÓMA
--BUKAREST
--VARSÓ
--MOSZKVA
--ANKARA
--KAIRÓ
--RABAT
--NEW DELHI
--TOKIÓ
--PEKING
--OTTAWA
--MEXIKÓVÁROS
--BRASÍLIA
--BUENOS AIRES
--KATMANDU
--ALGÍR
--NAIROBI
--ADDISZ-ABEBA
--KINSHASA
--BAGDAD
--TEHERÁN
--LIMA
--BOGOTÁ
--CARACAS
--ISLAMABAD
--KABUL
--DHAKA
--RANGOON
--BANGKOK
--HANOI
--KUALA LUMPUR
--JAKARTA
--DAR ES SALAAM
--ACCRA
--LAGOS
--KARTÚM
--KAMPALA
--PRETORIA
--RIJÁD
--WASHINGTON
--MANILA
--SZÖUL
--PHENJAN
--SZANAA
--KIJEV
--TASKENT
--TAJPEJ
select fovaros from orszagok where nepesseg*1000 > 20000000;
--Mely országok népsűrűsége nagyobb 500 fő/km2-nél?
--MÁLTA
--MONACO
--VATIKÁN
--BANGLADES
--DÉL-KOREA
--NAURU
--BARBADOS
--SZINGAPÚR
--BAHREIN
--MAURITIUS
--MALDIV-SZIGETEK
--TAJVAN
select orszag from orszagok where nepesseg*1000 / terulet > 500;
--Hány ország államformája köztársaság?
--PORTUGÁLIA
--FRANCIAORSZÁG
--FINNORSZÁG
--OLASZORSZÁG
--MAGYARORSZÁG
--BULGÁRIA
--ROMÁNIA
--SZLOVÁKIA
--CSEHORSZÁG
--LENGYELORSZÁG
--GÖRÖGORSZÁG
--TÖRÖKORSZÁG
--IZLAND
--ALBÁNIA
--MÁLTA
--CIPRUS
--ÍRORSZÁG
--KUBA
--ARGENTÍNA
--ALGÉRIA
--LIBANON
--ETIÓPIA
--ERITREA
--CHILE
--VENEZUELA
--GUYANA
--SURINAME
--PAKISZTÁN
--AFGANISZTÁN
--BANGLADES
--KAMBODZSA
--VIETNAM
--INDONÉZIA
--ZIMBABWE
--NAMÍBIA
--ANGOLA
--GHÁNA
--KONGÓI KÖZTÁRSASÁG
--SZENEGÁL
--SZOMÁLIA
--SZUDÁN
--BURKINA FASO
--FIDZSI-SZIGETEK
--DÉL-KOREA
--SAN MARINO
--SZINGAPÚR
--DZSIBUTI
--GAMBIA
--BISSAU-GUINEA
--JEMEN
--ZÖLD-FOKI KÖZTÁRSASÁG
--SEYCHELLE-SZIGETEK
--DOMINIKAI KÖZÖSSÉG
--SÁO TOMÉ ÉS PRINCIPE
--UKRAJNA
--LITVÁNIA
--LETTORSZÁG
--ÉSZTORSZÁG
--HORVÁTORSZÁG
--SZLOVÉNIA
--BOSZNIA-HERCEGOVINA
--MACEDÓNIA
--AZERBAJDZSÁN
--GRÚZIA
--ÖRMÉNYORSZÁG
--BELARUSZ
--MOLDOVA
--ÜZBEGISZTÁN
--KAZAHSZTÁN
--KIRGIZISZTÁN
--TÁDZSIKISZTÁN
--TÜRKMENISZTÁN
--TAJVAN
--KELET-TIMOR
--MARSHALL-SZIGETEK
--MONTENEGRO
select orszag from orszagok where allamforma = 'köztársaság';
--Mely országok pénzneme a kelet-karib dollár?
--SAINT VINCENT ÉS GRENADINE
--GRENADA
--ANTIGUA ÉS BARBUDA
--DOMINIKAI KÖZÖSSÉG
--SAINT KITTS ÉS NEVIS
select orszag from orszagok where penznem='kelet-karib dollár';
--Hány ország nevében van benne az "ORSZÁG" szó? 17
select count(orszag) from orszagok where orszag like '%ORSZAG%';
--Mely országokban korona a hivatalos fizetőeszköz?
--NORVÉGIA
--SVÉDORSZÁG
--CSEHORSZÁG
--DÁNIA
--IZLAND
select orszag from orszagok where orszagok.penznem like '%KORONA%';
--Mennyi Európa területe? 6003122.36 km2
select sum(terulet) from orszagok where foldr_hely like '%Europa%';
--Mennyi Európa lakossága? 611609000
select sum(nepesseg*1000) from orszagok where foldr_hely like '%Europa%';
--Mennyi Európa népsűrűsége? 24093.7124
select sum(nepesseg*1000/terulet) from orszagok where foldr_hely like '%Europa%';
--Hány ország van Afrikában? 53
select count(orszag) from orszagok where foldr_hely like '%Afrika%';
--Mennyi Afrika lakossága? 1011582000
select sum(nepesseg*1000) from orszagok where foldr_hely like '%Afrika%';
--Mennyi Afrika népsűrűsége? 4013.3340
select sum(nepesseg*1000 / terulet) from orszagok where foldr_hely like '%Afrika%';
--Melyek a szigetországok?
--BAHAMA-SZIGETEK
--FÜLÖP-SZIGETEK
--FIDZSI-SZIGETEK
--COMORE-SZIGETEK
--MALDIV-SZIGETEK
--SALAMON-SZIGETEK
--SEYCHELLE-SZIGETEK
--MARSHALL-SZIGETEK
select orszag from orszagok where orszagok.orszag like '%sziget%';
--Mely országok államformája hercegség, vagy királyság?
--LIECHTENSTEIN
--SZAMOA
select orszag from orszagok where orszagok.allamforma = 'hercegség' or allamforma = 'királyság';
--Hány országnak nincs autójelzése? 9
select count(orszag) from orszagok where autojel = '';
--Mennyi a váltószáma az aprópénznek azokban az országokban, ahol nem 100?
--10 hao Vietnamben, 5 khoum Mauritaniaban
select orszag, valtopenz from orszagok where valtopenz not like '%100%';
--Hány ország területe kisebb Magyarországénál? 86
select count(orszag) from orszagok where terulet < (SELECT terulet from orszagok where orszag = 'Magyarorszag');
--Melyik a legnagyobb területű ország, és mennyi a területe? OROSZORSZÁG,17075400.00 km/2
select orszag, terulet from orszagok where orszagok.terulet = (SELECT MAX(terulet) from orszagok);
--Melyik a legkisebb területű ország, és mennyi a területe? VATIKÁN,0.44 km/2
select orszag, terulet from orszagok where orszagok.terulet = (SELECT MIN(terulet) from orszagok);
--Melyik a legnépesebb ország, és hány lakosa van? KÍNA,1381000000
select orszag, nepesseg*1000 from orszagok where nepesseg*1000 = (SELECT MAX(nepesseg*1000) from orszagok);
--Melyik a legkisebb népességű ország, és hány lakosa van? VATIKÁN,1000
select orszag, nepesseg*1000 from orszagok where nepesseg*1000 = (SELECT MIN(nepesseg*1000) from orszagok);
--Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége? MONACO,15384.6154
select orszag, (nepesseg*1000/terulet) as nepsuruseg from orszagok where (nepesseg*1000/terulet) = (SELECT MAX((nepesseg*1000/terulet)) from orszagok);
--Melyik a legritkábban lakott ország, és mennyi a népsűrűsége? MONGÓLIA,1.6933
select orszag, (nepesseg*1000/terulet) as nepsuruseg from orszagok where (nepesseg*1000/terulet) = (SELECT MIN((nepesseg*1000/terulet)) from orszagok);
--Melyik a legnagyobb afrikai ország és mekkora? SZUDÁN,2505813.00km2
select orszag, terulet from orszagok where foldr_hely like '%afrika%' order by terulet desc limit 1;
--Melyik a legkisebb amerikai ország és hányan lakják? SAINT KITTS ÉS NEVIS,42000
select orszag, nepesseg*1000 as lakossag from orszagok where foldr_hely like '%amerika%' order by terulet asc limit 1;
--Melyik az első három legsűrűbben lakott "országméretű" ország (tehát nem város- vagy törpeállam)?
--mivel nem volt definialva mi szamit meret alapjan 'orszagmeretu orszagnak' ezert Monaco, Szingapur, Vatikan, (4. Malta lenne)
select orszag, nepesseg*1000/terulet as nepsuruseg from orszagok where terulet order by nepsuruseg desc limit 4;
--Melyik a világ hat legnépesebb fővárosa?
--PEKING
--NEW DELHI
--WASHINGTON
--JAKARTA
--BRASÍLIA
--ISLAMABAD
--LAGOS
select fovaros, nepesseg*1000 as lakossag from orszagok order by lakossag desc limit 7;
--Melyik tíz ország egy főre jutó GDP-je a legnagyobb?
--LUXEMBURG
--NORVÉGIA
--SVÁJC
--LIECHTENSTEIN
--ÍRORSZÁG
--DÁNIA
--AMERIKAI EGYESÜLT ÁLLAMOK
--IZLAND
--MONACO
--JAPÁN
select orszag from orszagok order by gdp desc limit 10;
--Melyik tíz ország össz-GDP-je a legnagyobb?
--AMERIKAI EGYESÜLT ÁLLAMOK
--JAPÁN
--NÉMETORSZÁG
--NAGY-BRITANNIA
--FRANCIAORSZÁG
--KÍNA
--OLASZORSZÁG
--SPANYOLORSZÁG
--KANADA
--MEXIKÓ
select orszag from orszagok order by gdp*(nepesseg*1000) desc limit 10;
--Melyik országban a legszegényebbek az emberek?
-- A feladat szerint Vatikan egy fore juto GDP-je 0, nem hinnem hogy akkora 'szegenyseg' lenne ott, ezert Etiopia
select orszag, gdp from orszagok order by gdp asc limit 2;
--Melyik a 40. legkisebb területű ország? VANUATU
select orszag from orszagok order by terulet asc limit 1 offset 39;
--Melyik a 15. legkisebb népsűrűségű ország? GRENADA
select orszag from orszagok order by nepesseg asc limit 1 offset 14;
--Melyik a 61. legnagyobb népsűrűségű ország? CHILE
select orszag from orszagok order by nepesseg desc limit 1 offset 60;

--Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez?
--Az emberek hányadrésze él Ázsiában? 
--A szárazföldek mekkora hányadát foglalja el Oroszország?
--Az emberek hány százaléka fizet euroval?

--Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének? 583.4 szerese
select MAX(gdp)/(select gdp from orszagok order by gdp asc limit 1 offset 1) from orszagok;

--A világ össz-GDP-jének hány százalékát adja az USA?
--A világ össz-GDP-jének hány százalékát adja az euroövezet?

--Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?
--JAPÁN
--IZRAEL
--AUSZTRÁLIA
--ÚJ-ZÉLAND
--SZAUD-ARÁBIA
--KATAR
--OMÁN
--DÉL-KOREA
--SZINGAPÚR
--EGYESÜLT ARAB EMIRSÉGEK
--KUVAIT
--BAHREIN
--SEYCHELLE-SZIGETEK
--BRUNEI
--TAJVAN
select orszag from orszagok where gdp > (select avg(gdp) from orszagok) and foldr_hely not like '%europa%' and foldr_hely not like '%amerika%';
--Milyen államformák léteznek Európában? 7
select count(distinct allamforma) from orszagok where foldr_hely like '%Europa%';
--Hányféle államforma létezik a világon? 24
select count(distinct allamforma) from orszagok;
--Hányféle fizetőeszközt használnak Európában az eurón kívül? 22
select count(penznem) from orszagok where penznem not like '%euro%' and foldr_hely like '%europa%';
--Mely pénznemeket használják több országban is?
--ausztrál dollár
--CFA-frank
--dinár
--dollár
--euró
--kelet-karib dollár
--kwacha
--manát
--peso
--svájci frank
--won
select penznem from orszagok group by penznem having COUNT(1) != 1;
--Mely országok államformája egyedi?
--autonóm hercegség
--föderativ köztársaság
--hercegség
--iszlám abszolút monarchia
--iszlám köztársaság
--iszlám népköztársaság
--iszlám szövetségi köztársaság
--királyság
--nagyhercegség
--népi demokratikus köztársaság
--sejkség
--szocialista köztársaság
--szövetségi állam
--szultanátus
--teokratikus abszolút monarchia
select allamforma from orszagok group by allamforma having COUNT(1) = 1;
--
-- AMELYIK SOR NEM MENT: 295 296 297 298 303 304