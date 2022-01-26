.mode columns 
.headers on 
.nullvalue NULL 
 
# Media de idades por patologia 
 
select patologia.nome, round(avg(datadenascimento.idade), 0) as media_idades 
from Patologia, Paciente, datadenascimento, PacienteSeguroPatologia
where paciente.idPaciente=PacienteSeguroPatologia.idPaciente and PacienteSeguroPatologia.idPatologia=Patologia.idPatologia and paciente.datadenascimento=datadenascimento.datadenascimento
group by patologia.nome
order by media_idades desc;
