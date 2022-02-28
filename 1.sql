--1
--select *
--from da.predmet

--2
--select *
--from da.dosije
--where mestorodjenja = 'Beograd'

--3
--select distinct mestorodjenja
--from da.dosije

--4
--select distinct naziv
--from da.predmet
--where espb > 6

--5
--select oznaka,naziv
--from da.predmet
--where espb between 8 and 15

--6
--select *
--from da.ispit
--where skgodina in (2015, 2016, 2018)

--7
--select *
--from da.ispit 
--where skgodina not in (2015,2016,2018)

--8
--select *
--from da.dosije
--where indeks / 10000 = 2015

--9
--select naziv, 2000*espb as cena
--from da.predmet

--10
--select *
--from da.dosije
--where mestorodjenja like '%o%'

--select *
--from da.dosije
--where mestorodjenja like '_o%'

--select *
--from da.dosije
--where mestorodjenja like '%e'

--SELECT *
--  FROM DA.DOSIJE
--  WHERE MESTORODJENJA LIKE 'N%d'
  
--12
--select id, oznaka, naziv, espb
--from da.predmet 
--order by espb asc

--select *
--from da.predmet
--order by espb desc
  
--select *
--from da.predmet
--order by espb asc, naziv desc 
  
--13
--select ime, prezime, datupisa  
--from da.dosije 
--where datupisa between '10.07.2017' and '15.09.2017'
--order by prezime
--  
--  
