insert into client(nom , pr�nom ,id, adress ) values('imane','amro',3, 'hay jadid tanger')
select *from client;
begin transaction;
delete from client where id=3;
rollback;
select *from client;