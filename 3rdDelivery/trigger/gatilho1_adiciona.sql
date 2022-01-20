.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- Gatilho que impede de criar um Seguro de Saúde com 
-- uma Validade anterior à data atual

CREATE TRIGGER SeguroInvalido
BEFORE INSERT ON SEGUROdeSAUDE
FOR EACH ROW
BEGIN
	Select CASE
		WHEN New.Validade < CAST(CURRENT_TIMESTAMP AS DATE)
	THEN RAISE(ABORT, 'Validade inválida')
END;
END;
