create table Employ�(num int,nom varchar(100),ville varchar(100),salaire int)
insert into Employ� values(1,'moahmed','tanger',2000)
insert into Employ� values(2,'ayoub','rabat',2300)
insert into Employ� values(3,'abslam','agadir',2500)
insert into Employ� values(4,'kawkaw','laarach',0)
Select * From Employ� where salaire =(select MAX(salaire) From
Employ�);