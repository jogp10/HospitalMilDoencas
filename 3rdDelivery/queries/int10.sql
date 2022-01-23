.mode columns
.headers on
.nullvalue NULL


select distinct SEGUROdeSAUDE.Nome as SeguroDeSaude, PATOLOGIA.Nome as NaoCobre
from SegurodeSaude,Patologia

EXCEPT

select distinct SEGUROdeSAUDE.Nome, PATOLOGIA.Nome
from SEGUROdeSAUDE inner join PATOLOGIA, PacienteSeguroPatologia
where PacienteSeguroPatologia.idSeguroDeSaude = SEGUROdeSAUDE.idSeguroDeSaude and PacienteSeguroPatologia.idPatologia = PATOLOGIA.idPatologia 
order by SEGUROdeSAUDE.Nome ASC ; 