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









































































































