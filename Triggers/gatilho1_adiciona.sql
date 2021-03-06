.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- Gatilho que impede de adicionar um Seguro de Saúde para uma Validade inválida
CREATE TRIGGER IF NOT EXISTS SeguroInvalido
BEFORE INSERT ON SEGUROdeSAUDE
WHEN strftime('%Y-%m-%d', 'now') > NEW.Validade
BEGIN
    SELECT RAISE(ROLLBACK, 'Seguro invalido!');
END;

-- Gatilho que impede de atualizar um Seguro de Saúde para uma Validade inválida
CREATE TRIGGER IF NOT EXISTS SeguroInvalidoUpdate
BEFORE UPDATE OF Validade ON SEGUROdeSAUDE
FOR EACH ROW
WHEN strftime('%Y-%m-%d', 'now') > NEW.Validade
  BEGIN
    SELECT RAISE(ROLLBACK, 'Seguro inválido!');
  END;
