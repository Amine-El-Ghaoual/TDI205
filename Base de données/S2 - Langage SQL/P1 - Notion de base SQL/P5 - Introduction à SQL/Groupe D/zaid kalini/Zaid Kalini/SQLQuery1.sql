CREATE database ZaidKalini
Use ZaidKalini
Go
create table Stagaire (idstg int constraint pk_id primary key, nomStag nvarchar(30), Pr�nomStag nvarchar(30), AgeStag Int)
select * from Stagaire;
insert into Stagaire (idstg,nomStag,Pr�nomStag,AgeStag) values (1,'Kalin','Zaid',22),(2,'Youssra','Laamouri',20);
select nomStag as 'Nom de stagiare', Pr�nomStag as 'Pr�nom de stagiare' from Stagaire;
update Stagaire set nomStag ='Kaliniiii' where idstg=1;
select * from Stagaire
delete from Stagaire where idstg=2;
select * from Stagaire
1
