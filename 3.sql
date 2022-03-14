



--1
--select naziv
--from da.predmet p join da.ispit i on
--	p.id = i.idpredmeta
--where i.indeks = 20170022 and 
--	  status not in ('p','n')

--2
--select ime, prezime
--from da.dosije d join da.ispit i on
--	d.indeks = i.indeks
--where ocena = 9 and status = 'o'

--3
--select distinct indeks
--from da.ispit i join da.predmet p on
--	i.idpredmeta = p.id
--where ocena > 5 and status = 'o' and
--	idpredmeta not in (
--			select idpredmeta
--			from da.predmet p join da.ispit i on
--				i.idpredmeta = p.id
--			where i.indeks = 20170022 and ocena > 5 and status = 'o' 
--	)

--4
--select naziv
--from da.predmet
--where exists(
--		select *
--		from da.ispit 
--		where ocena > 5 and status = 'o' and indeks = 20170022
--	)
	

--5
--select naziv
--from da.predmet p
--where not exists (
--		select *
--		from da.skolskagodina sg
--		where not exists (
--			select *
--			from da.kurs k
--			where k.skgodina = sg.skgodina and k.idpredmeta = p.id 
--			
--		)
--)

--6

--select *
--from da.dosije d
--where not exists (
--	select *
--	from da.skolskagodina sg
--	where not exists (
--		select *
--		from da.upisgodine ug
--		where ug.skgodina = sg.skgodina and ug.indeks = d.indeks
--	)
--)


























































































































