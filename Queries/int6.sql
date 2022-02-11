.mode columns
.headers on
.nullvalue NULL

# Patologias e tratamento para essa patologia, nr de medicos capazes de tratar

select Patologia.Nome, Trata.tratamento as tratamento, count(*) as medicos
from Patologia, Colaborador, Trata
where Patologia.idPatologia = Trata.idPatologia and Colaborador.idColaborador = Trata.idMedico
group by Trata.idPatologia, Trata.tratamento
order by Patologia.Nome ASC; 