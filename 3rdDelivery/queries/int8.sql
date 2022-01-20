.mode columns
.headers on
.nullvalue NULL

# Carga horaria de cada medico

Select Colaborador.nome, Especialidade.Nome, Agenda.HoraInicial, Agenda.HoraFinal, max(Agenda.HoraFinal- Agenda.HoraInicial) as CargaHoraria
From Colaborador, Especialidade, Agenda
Where Colaborador.idEspecialidade = Especialidade.idEspecialidade and Agenda.idColaborador = Colaborador.idColaborador;

