.mode columns
.headers on
.nullvalue NULL


# Fornecedores de seguros de saude e quantidade de utilizadores

Select SegurosdeSaude.Nome as Fornecedor, count(*) as nr_utilizadores
from SegurosdeSaude, PacienteSegurosPatologia
where SegurosDeSaude.idSegurosDeSaude=PacienteSegurosPatologia.idSegurosDeSaude
group by Fornecedor
order by nr_utilizadores desc
