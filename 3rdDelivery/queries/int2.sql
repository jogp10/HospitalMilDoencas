.mode columns
.headers on
.nullvalue NULL

#Paciente cujo Seguro de Saude expira em menos de 1 ano

Select Paciente.Nome, SegurosDeSaude.Nome
from Paciente, SegurosDeSaude, PacienteSegurosPatologia
where PacienteSegurosPatologia.idPaciente=Paciente.idPaciente
and PacienteSegurosPatologia.idSegurosDeSaude=SegurosDeSaude.idSegurosDeSaude
and SegurosDeSaude.Validade<strftime('%Y', 'now', '+1 year')
order by paciente.nome asc
