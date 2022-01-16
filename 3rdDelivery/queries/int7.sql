.mode columns
.headers on
.nullvalue NULL

SELECT Paciente.Nome, Paciente.DataDeNascimento
FROM Paciente
WHERE Paciente.DataDeNascimento BETWEEN '1990' AND '2000'
ORDER BY DataDeNascimento DESC;