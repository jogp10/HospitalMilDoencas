.mode columns
.headers on
.nullvalue NULL

Select Nome, id_Paciente, count(*) as nr_medicos from (Select Paciente.Nome as Nome, Paciente.idPaciente as id_Paciente, TRATA.idMedico, PacienteSegurosPatologia.idPatologia, Colaborador.Nome
From Paciente, TRATA, PacienteSegurosPatologia, Colaborador
Where Paciente.idPaciente = PacienteSegurosPatologia.idPaciente and PacienteSegurosPatologia.idPatologia  = Trata.idPatologia and Colaborador.idColaborador = Trata.idMedico
order by Paciente.Nome)
group by id_Paciente
order by nome asc; 