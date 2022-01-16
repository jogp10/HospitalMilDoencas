.mode columns
.headers on
.nullvalue NULL

# Nomes das especialidades e nr de medicos que trabalham em cada uma

select Especialidade.Nome as Especialidade, count(*) as nr_medicos
from Especialidade, Colaborador
where Especialidade.idEspecialidade = Colaborador.idEspecialidade
group by Especialidade.Nome ; 