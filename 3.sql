



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
--7

--select indeks
--from da.dosije d
--where not exists(
--	select *
--	from da.ispitnirok ir
--	where not exists(
--		select *
--		from da.ispit i
--		where i.indeks = d.indeks
--			  and i.skgodina = ir.skgodina
--			  and status not in ('p', 'n')
--		)
--)

--8

--select indeks
--from da.dosije d
--where not exists(
--	select *
--	from da.ispitnirok ir
--	where skgodina = 2018
--	and not exists(
--		select *
--		from da.ispit i
--		where i.skgodina = 2018
--			and i.indeks = d.indeks
--			and i.oznakaroka = ir.oznakaroka
--			and i.status not in ('p', 'n')
--	)
--)

--9
--
--select *
--from da.predmet
--where espb >= all(select espb 
--				from da.predmet)
--

--10

--select *
--from da.dosije
--where datdiplomiranja <= all(select datdiplomiranja
--	from da.dosije
--	where datdiplomiranja is not null)


--11

--select *
--from da.dosije
--where not datdiplomiranja <= all (select datdiplomiranja
--	from da.dosije where  datdiplomiranja is not null) 

--12
--
--select *
--from da.predmet p
--where exists (
--	select *
--	from da.upisankurs uk
--	where uk.idpredmeta = p.id
--	)

--13


--
--select ime, prezime, naziv, skgodina, oznakaroka, ocena
--from da.dosije d left join da.ispit i 
--		on d.indeks=i.indeks and ocena>5 and status='o'
--	 left join da.predmet p 
--	    on i.idpredmeta=p.id
--where exists (select *
--              from da.ispit
--              where indeks=d.indeks and skgodina=2018
--                     and status not in ('p', 'n'));
