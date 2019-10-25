create table Employ�(num int, nom varchar(20),ville varchar(25),salaire varchar(20));

insert into Employ� values(1,'madani','tanger','2000');
insert into Employ� values(2,'samir','tanger','2500');
insert into Employ� values(3,'khalil','marakeche','3000');
insert into Employ� values(4,'haj','tetoun','6000');
insert into Employ� values(5,'smail','safi','5000');

--Requete 52
Select * From Employ� where salaire =(select MAX(salaire) From Employ�) ;
--Requete 53
Select * from Employ� where salaire IN (Select MAX(salaire) as SalaireMax from Employ� GROUP BY ville) ; 
--Requte 54
Select * From Employ� where salaire > ANY(Select MAX (salaire) from Employ� GROUP BY ville) ; 
--requete 55
Select * From Employ� where salaire < All(select MAX (salaire) from Employ� GROUP BY ville) ; 

