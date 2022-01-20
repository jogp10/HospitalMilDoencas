.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

.print ''
.print 'Seguros De Saude atuais:'
.print ''

insert into SEGUROdeSAUDE values(700,'Multicare',2025-01-01);
insert into SEGUROdeSAUDE values(701,'Liberty',2034-01-01);

SELECT Nome,Validade FROM SEGUROdeSAUDE;
.print ''
.print 'Tentar alterar a validade do Seguro de Saude da Multicare para disparar o gatilho;'
.print ''
.print 'Validade = 2010 (Inválido) :'
.print ''

insert into SEGUROdeSAUDE values(702,'AXA',2010-01-01);

.print ''
.print ''
Select Nome,Validade FROM SEGUROdeSAUDE;

.print ''
.print 'Alterando para uma válida'
.print 'Validade = 2040 (Válido) :'
.print ''


insert into SEGUROdeSAUDE values(703,'D',2040-01-01);
Select Nome,Validade FROM SEGUROdeSAUDE;
