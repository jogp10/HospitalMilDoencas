.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- Gatilho que impede de alterar um Seguro de Saúde para uma Validade inválida
CREATE TRIGGER IF NOT EXISTS SeguroInvalido
BEFORE INSERT ON SEGUROdeSAUDE
WHEN (strftime('%Y', 'now') - strftime('%Y', NEW.Validade) < 0)
BEGIN
    SELECT RAISE(ROLLBACK, 'Seguro invalido!');
END;
