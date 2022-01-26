.mode columns
.headers on
.nullvalue NULL


create view if not exists nomePaciente as 
Select Paciente.Nome as Nome, Paciente.idPaciente as id, Patologia.Nome as Patologia, TRATA.idMedico, PacienteSeguroPatologia.idPatologia, Colaborador.Nome
From Paciente, TRATA, PacienteSeguroPatologia, Colaborador,Patologia
Where Paciente.idPaciente = PacienteSeguroPatologia.idPaciente and PacienteSeguroPatologia.idPatologia  = Trata.idPatologia and Colaborador.idColaborador = Trata.idMedico and Patologia.idPatologia = PacienteSeguroPatologia.idPatologia
order by Paciente.Nome; 

Select NomePaciente.Nome, Patologia, count(*) as Nr_medicos from nomePaciente
group by id
order by NomePaciente.Nome asc;