.mode columns
.headers on
.nullvalue NULL

# Nomes das especialidades e nr de medicos que trabalham em cada uma

select count(*) as nr_medicos, Especialidade.Nome as Especialidade
from Especialidade, Colaborador
where Especialidade.idEspecialidade = Colaborador.idEspecialidade
group by Especialidade.Nome 
order by nr_medicos DESC; 