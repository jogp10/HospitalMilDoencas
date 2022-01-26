.mode columns
.headers on
.nullvalue NULL

#Paciente cujo Seguro de Saude expira em menos de 1 ano

Select Paciente.Nome, SeguroDeSaude.Nome
from Paciente, SeguroDeSaude, PacienteSeguroPatologia
where PacienteSeguroPatologia.idPaciente=Paciente.idPaciente
and PacienteSeguroPatologia.idSeguroDeSaude=SeguroDeSaude.idSeguroDeSaude
and SeguroDeSaude.Validade<strftime('%Y-%m-%d', 'now', '+1 year')
order by paciente.nome asc
