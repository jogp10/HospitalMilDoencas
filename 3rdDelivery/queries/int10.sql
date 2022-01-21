.mode columns
.headers on
.nullvalue NULL

# Seguros de saude e patologias que este nao cobre 

select distinct SEGUROdeSAUDE.Nome, PATOLOGIA.Nome
from SEGUROdeSAUDE inner join PATOLOGIA, PacienteSeguroPatologia
where PacienteSeguroPatologia.idSeguroDeSaude = SEGUROdeSAUDE.idSeguroDeSaude and PacienteSeguroPatologia.idPatologia = PATOLOGIA.idPatologia 
order by SEGUROdeSAUDE.Nome ASC ; 