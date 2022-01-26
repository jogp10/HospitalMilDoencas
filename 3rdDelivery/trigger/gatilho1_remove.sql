.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

DROP TRIGGER IF EXISTS SeguroInvalido;

DROP TRIGGER IF EXISTS SeguroInvalidoUpdate;

delete from SEGUROdeSAUDE where SEGUROdeSAUDE.idSeguroDeSaude = 700;
delete from SEGUROdeSAUDE where SEGUROdeSAUDE.idSeguroDeSaude = 701;
delete from SEGUROdeSAUDE where SEGUROdeSAUDE.idSeguroDeSaude = 702;
delete from SEGUROdeSAUDE where SEGUROdeSAUDE.idSeguroDeSaude = 703;