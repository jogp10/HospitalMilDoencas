.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

.print ''
.print 'Seguros De Saude atuais:'
.print ''

insert into SEGUROdeSAUDE values(700,'Multicare', '2025-01-01');
insert into SEGUROdeSAUDE values(701,'Liberty', '2034-01-01');

SELECT Nome,Validade FROM SEGUROdeSAUDE;
.print ''
.print 'Tentar adicionar um Seguro de Saude com uma Validade inválida;'
.print ''
.print 'Validade = 2010 (Inválido) :'
.print ''

insert into SEGUROdeSAUDE values(702,'AXA','2010-01-01');

.print ''
.print ''
Select Nome,Validade FROM SEGUROdeSAUDE;

.print ''
.print 'Adicionando uma válida'
.print 'Validade = 2040 (Válido) :'
.print ''


insert into SEGUROdeSAUDE values(703,'Servicos Sociais','2040-01-01');
Select Nome,Validade FROM SEGUROdeSAUDE;

.print ''
.print 'Alterar a validade do Seguro da Multicare para uma Validade inválida'
.print 'Validade = 2005 (Inválido) :'
.print ''

UPDATE SEGUROdeSaude SET Validade = '2005-02-20' WHERE SEGUROdeSAUDE.Nome = 'Multicare';

.print ''
.print 'Alterar a validade do Seguro da Liberty para uma Validade válida'
.print 'Validade = 2050 (Válido) :'
.print ''

UPDATE SEGUROdeSaude SET Validade = '2050-02-20' WHERE SEGUROdeSAUDE.Nome = 'Liberty';

Select Nome,Validade FROM SEGUROdeSAUDE;