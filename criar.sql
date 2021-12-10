.mode columns
.headers on

drop table if exits PACIENTE;
drop table if exits PESSOAaCONTACTAR;
drop table if exits COLABORADOR;
drop table if exits GRAUdePARENTESCO;
drop table if exits ESPECIALIDADE;
drop table if exits PATOLOGIA;
drop table if exits SEGUROSdeSAUDE;
drop table if exits PacienteSegurosPatologia;
drop table if exits TRATA;
drop table if exits AGENDA;
drop table if exits DATAdeNASCIMENTO;


create table PACIENTE (
	idPaciente
	Telefone
	Nome
	Morada
	DataDeNascimento
	Genero
	Profissao

);

create table PESSOAaCONTACTAR (
	idPessoaAContactar
	Telefone
	Nome
	Morada
	DataDeNascimento
	Genero

);

create table COLABORADOR (
	idColaborador
	Telefone
	Nome
	Morada
	DataDeNascimento
	Genero
	Estatuto
	Comida
	Nome

);

create table GRAUdePARENTESCO (
	idPaciente
	idPessoaAContactar

);

create table ESPECIALIDADE (
	idEspecialidade
	Nome

);

create table PATOLOGIA (
	idPatologia
	Nome

);

create table SEGUROSdeSAUDE (
	idSegurosDeSaude
	Nome
	Validade

);

create table PacienteSegurosPatologia (
	idPaciente
	idPatologia
	idSegurosDeSaude

);

create table TRATA (
	idPatologia
	idColaborador
	Tratamento
);

create table AGENDA (
	idAgenda
	HoraInicial
	HoraFinal
	Dia
	Local
	idPaciente
	idColaborador

);

create table DATAdeNASCIMENTO (
	DataDeNascimento
	Idade

);
