.mode columns
.headers on
.nullvalue NULL

SELECT nome, count(*) as nr_ocorrencias
FROM Patologia, PacienteSegurosPatologia
where Patologia.idPatologia=PacienteSegurosPatologia.idPatologia
group by idPatologia
