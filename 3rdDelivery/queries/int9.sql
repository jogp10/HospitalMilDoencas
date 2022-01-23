.mode columns
.headers on
.nullvalue NULL

# Quantos medicos podem tratar o paciente 

create view nomePaciente as 
Select Paciente.Nome as Nome, Paciente.idPaciente as id_Paciente, TRATA.idMedico, PacienteSeguroPatologia.idPatologia, Colaborador.Nome
From Paciente, TRATA, PacienteSeguroPatologia, Colaborador
Where Paciente.idPaciente = PacienteSeguroPatologia.idPaciente and PacienteSeguroPatologia.idPatologia  = Trata.idPatologia and Colaborador.idColaborador = Trata.idMedico
order by Paciente.Nome; 

Select Nome, id_Paciente, count(*) as nr_medicos from nomePaciente
group by id_Paciente
order by nome asc;