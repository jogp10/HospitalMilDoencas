.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

.print ''
.print 'Seguros De Saude atuais:'
.print ''


INSERT INTO SEGUROdeSAUDE (idSeguroDeSaude,Nome,Validade) VALUES (700,'Multicare',2025-01-01);
INSERT INTO SEGUROdeSAUDE (idSeguroDeSaude,Nome,Validade) VALUES (701,'Liberty','2034-01-01');
SELECT Nome,Validade FROM SEGUROdeSAUDE
.print ''
.print 'Tentar adicionar um Seguro de Saude inválido para disparar o gatilho;'
.print ''
.print 'Validade = 2010-01-01 (Inválido) :'
.print ''

INSERT INTO SEGUROdeSAUDE (idSeguroDeSaude,Nome,Validade) VALUES (900,'AXA','2010-01-01');

.print ''
Select Nome,Validade FROM SEGUROdeSAUDE;

.print ''
.print 'Validade = 2040-02-20 (Válido) :'
.print ''
INSERT INTO SEGUROdeSAUDE (idSeguroDeSaude,Nome,Validade) VALUES (699,'AXA','2034-01-01');

Select Nome,Validade FROM SEGUROdeSAUDE;
