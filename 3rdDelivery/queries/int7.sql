.mode columns
.headers on
.nullvalue NULL

# Nome e datadenascinmento de pacientes que nasceram entre 1990-2000

SELECT Paciente.Nome, Paciente.DataDeNascimento
FROM Paciente
WHERE Paciente.DataDeNascimento BETWEEN '1990' AND '2000'
ORDER BY DataDeNascimento DESC;