.mode columns
.headers on
.nullvalue NULL

# Carga horaria planeada de cada medico para os próximo 10 anos

Select Colaborador.nome, Especialidade.Nome, sum(Agenda.HoraFinal- Agenda.HoraInicial) as CargaHoraria
From Colaborador JOIN Especialidade, Agenda
Where Colaborador.idEspecialidade = Especialidade.idEspecialidade and Agenda.idColaborador = Colaborador.idColaborador
and Agenda.Dia>strftime('%Y-%m-%d', 'now') and Agenda.Dia<strftime('%Y-%m-%d', 'now', '+10 year')
group by colaborador.idColaborador
order by cargahoraria desc, colaborador.nome asc;


