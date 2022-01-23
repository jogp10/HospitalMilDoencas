.mode columns 
.headers on 
.nullvalue NULL 
 
# Media de idades por patologia 
 
select patologia.nome, datadenascimento.idade as media_idades 
from Patologia, Paciente, datadenascimento, PacienteSeguroPatologia
where paciente.idPaciente=PacienteSeguroPatologia.idPaciente and PacienteSeguroPatologia.idPatologia=Patologia.idPatologia and paciente.datadenascimento=datadenascimento.datadenascimento
order by patologia.nome;
