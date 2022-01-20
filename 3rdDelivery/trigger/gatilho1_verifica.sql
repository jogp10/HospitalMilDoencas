.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

print ''
.print 'Seguros De Saude atuais:'
.print ''

SELECT *
FROM SeguroDeSaude
INSERT INTO SeguroDeSaude (Nome,Validade) VALUES ('Multicare','2025-01-01');
INSERT INTO SeguroDeSaude (Nome,Validade) VALUES ('Liberty','2034-01-01');

Select Nome,Validade FROM Especialidade;
.print ''
.print 'Tentar adicionar um Seguro de Saude inválido para disparar o gatilho;'
.print ''
.print 'Validade = 2010-01-01 (Inválido) :'
.print ''

INSERT INTO SeguroDeSaude (Nome,Validade) VALUES ('AXA','2010-01-01');

.print ''
Select Nome,Validade FROM Especialidade;

.print ''
.print 'Validade = 2040-02-20 (Válido) :'
.print ''

INSERT INTO SeguroDeSaude (Nome,Validade) VALUES ('AXA','2034-01-01');

Select Nome,Validade FROM Especialidade;
