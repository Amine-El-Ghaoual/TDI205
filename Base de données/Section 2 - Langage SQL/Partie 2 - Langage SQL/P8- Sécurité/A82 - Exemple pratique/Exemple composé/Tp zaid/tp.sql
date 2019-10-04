create login Stagiare with password ='123456', default_database="Gest_des_projets"


USE [Gest_des_projets]
GO


CREATE TABLE Projet(
	idProjet int PRIMARY KEY ,
	titre varchar(50) NULL,
	nombre_jr_r�alisation int NULL,

)



CREATE TABLE Stagiares(
	idStag int PRIMARY KEY ,
	nom varchar(30) NULL,
	prenom varchar (50) NULL,
	cin varchar (15) NULL,
	e_mail varchar(100) NULL,
	date_naissance date NULL,
	tel_fix varchar(10) NULL,
	tel_portable varchar(10) NULL,
)


CREATE TABLE T�che(
	idTach int PRIMARY KEY,
	titre varchar(50) NULL,
	idprojet int NULL,
	nbr_jr_r�alisatioin int NULL,
)
ALTER TABLE T�che  WITH CHECK ADD FOREIGN KEY(idprojet)
REFERENCES Projet (idProjet)


CREATE TABLE [dbo].[TacheStagiare](
	[idStag] [int] NULL,
	[idTach] [int] NULL,
	[datedebut] [date] NULL,
	[dateFin] [date] NULL
) ON [PRIMARY]



ALTER TABLE TacheStagiare  WITH CHECK ADD  CONSTRAINT fk_idstg FOREIGN KEY(idStag)
REFERENCES Stagiares (idStag)


ALTER TABLE TacheStagiare  WITH CHECK ADD  CONSTRAINT fk_idtach FOREIGN KEY(idTach)
REFERENCES T�che (idTach)


ALTER TABLE TacheStagiare CHECK CONSTRAINT fk_idtach
GO

