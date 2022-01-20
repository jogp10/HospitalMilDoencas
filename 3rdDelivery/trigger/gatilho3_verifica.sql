.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

insert into PACIENTE values(400, 928596134, 'Francisca Pinheiro', 'Avenida de Marrocos', 2006-09-10, 'F', 'Advogado de Estados');
insert into AGENDA values(401, '13:00', '18:00', '2022-01-20', 'Piso 0', 400, null);

SELECT * FROM AGENDA;

insert into AGENDA values(402, '16:00', '19:00', '2022-02-20', 'Piso 0', 400, null);
insert into AGENDA values(403, '16:00', '19:00', '2022-01-20', 'Piso 0', 400, null);

.print ''
.print 'Inserção de agenda 402 e 403. 403 deve ativar trigger e não ser inserida'
.print ''
SELECT * FROM AGENDA;

update AGENDA set Dia = '2022-01-21' where idAgenda=402;


.print ''
.print 'Update na agenda 402 para dia 21-01-2022'
.print ''
SELECT * FROM AGENDA;

update AGENDA set Dia = '2022-01-20' where idAgenda=402;


.print ''
.print 'Tentativa de update na agenda 402 para dia 20-01-2022, não deve haver alteração'
.print ''
SELECT * FROM AGENDA;
