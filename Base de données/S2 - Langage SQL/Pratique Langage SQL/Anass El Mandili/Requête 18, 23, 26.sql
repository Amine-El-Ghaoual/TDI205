create database Pratique;
--Requete 18
Create table Groupes( id int, nom varchar(50), Constraint pk_groupe Primary key(id) )

create table Stagiaire (id int,nom varchar(15),note float,fili�re varchar(10),
id_group int ,
Constraint n_note Check(note between 0 and 20),
Check(fili�re='tdi'or fili�re='tri'),
 Constraint pk_stagiaire Primary key(id),
 Constraint fk_stagiaire_groupe Foreign key(id_group) References Groupes(id)
 );
 --Requete 23
 Alter table Stagiaire add  ville varchar(100) not null; 
 --Requete 26
Create table Mentionn ( id int Identity( 1 ,2 ), nom varchar(50), nmax float, nmin float 
);





 