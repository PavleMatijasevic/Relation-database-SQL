--1
--select *
--from da.predmet
--order by espb, naziv desc

--2
--select oznaka, naziv, obimespb/60 as godina_studiranja
--from da.studijskiprogram sp
--where obimespb/60 >= 3
--order by obimespb/60, naziv

--3
--select *
--from da.dosije
--where datdiplomiranja is NULL

--4
--select *
--from da.dosije 
--where datdiplomiranja is not NULL


--5
--select *
--from da.dosije, da.ispit
	
--6
--select *
--from da.dosije d join da.ispit i on 
--	i.indeks = d.indeks

--7
--select d.indeks, ime, prezime, idpredmeta, ocena
--from da.ispit i join da.dosije d on
--	d.indeks = i.indeks
--where datpolaganja = '28.1.2016'

--8
--select d.indeks, ime, prezime, naziv, ocena
--from da.dosije d join da.ispit i on
--	i.indeks = d.indeks join da.predmet p on
--		p.id = i.idpredmeta
--where ocena > 5 and status = 'o'

--9
--select *
--from da.dosije d join da.ispit i on
--	d.datdiplomiranja = i.datpolaganja


--10
--select p1.oznaka,p2.oznaka, p1.espb
--from da.predmet p1 join da.predmet p2 on
--	p1.id > p2.id
--where p1.espb = p2.espb

--11

--select distinct d.indeks, ime, prezime
--from da.dosije d join da.ispit i on 
--	d.indeks = i.indeks join da.predmet p on 
--		p.id = i.idpredmeta
--where d.prezime like '___a%c' and
--	  i.status = 'o' and
--	  i.ocena between 2 and 10 and
--	  i.datpolaganja between '05.01.2018' and '15.12.2018'
--order by prezime, ime desc

--12
--Za svaki predmet koji može da se sluša na nekom studijskom programu izdvojiti uslovne predmete tog predmeta. 
--Izdvojiti identifikator studijskog programa, identifikator predmeta, vrstu tog predmeta (obavezan ili izborni)
--na studijskom programu i identifikator uslovnog predmeta. Izdvojiti i predmete koji nemaju uslovne predmete.




--13
select distinct d.indeks, ime, prezime, datdiplomiranja, naziv, datkraja
from da.dosije d join da.ispit i on 
	d.indeks = i.indeks full join da.ispitnirok ir on
	ir.skgodina = i.skgodina
where d.datdiplomiranja = ir.datkraja
































































































