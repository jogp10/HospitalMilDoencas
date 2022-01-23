.mode columns
.headers on
.nullvalue NULL

# Nr de ocorrencias de cada patologia

SELECT nome, count(*) as nr_ocorrencias
FROM Patologia, PacienteSeguroPatologia
where Patologia.idPatologia=PacienteSeguroPatologia.idPatologia
group by PacienteSeguroPatologia.idPatologia
ORDER BY nr_ocorrencias DESC
