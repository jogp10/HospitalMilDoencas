.mode columns
.headers on
.nullvalue NULL


# Fornecedores de seguros de saude e quantidade de utilizadores

Select SegurodeSaude.Nome as Fornecedor, count(*) as nr_utilizadores
from SegurodeSaude, PacienteSeguroPatologia
where SeguroDeSaude.idSeguroDeSaude=PacienteSeguroPatologia.idSeguroDeSaude
group by Fornecedor
order by nr_utilizadores desc
