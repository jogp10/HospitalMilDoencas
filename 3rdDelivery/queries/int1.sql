.mode columns
.headers on
.nullvalue NULL

# Nr de ocorrencias de cada patologia

SELECT nome, count(*) as nr_ocorrencias
FROM Patologia, PacienteSegurosPatologia
where Patologia.idPatologia=PacienteSegurosPatologia.idPatologia
group by PacienteSegurosPatologia.idPatologia
ORDER BY nr_ocorrencias DESC
