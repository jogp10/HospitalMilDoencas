.mode columns
.headers on

drop table if exists PACIENTE;
drop table if exists PESSOAaCONTACTAR;
drop table if exists COLABORADOR;
drop table if exists GRAUdePARENTESCO;
drop table if exists ESPECIALIDADE;
drop table if exists PATOLOGIA;
drop table if exists SEGUROSdeSAUDE;
drop table if exists PacienteSegurosPatologia;
drop table if exists TRATA;
drop table if exists AGENDA;
drop table if exists DATAdeNASCIMENTO;


create table PACIENTE (
	idPaciente INTEGER PRIMARY KEY,
	Telefone INTEGER,
	Nome TEXT,
	Morada TEXT,
	DataDeNascimento DATE,
	Genero TEXT,
	Profissao  TEXT	
);

create table PESSOAaCONTACTAR (
	idPessoaAContactar INTEGER PRIMARY KEY,
	Telefone INTEGER,
	Nome TEXT,
	Morada TEXT,
	DataDeNascimento DATE,
	Genero TEXT

);

create table COLABORADOR (
	idColaborador INTEGER PRIMARY KEY,
	Telefone INTEGER,
	Nome TEXT,
	Morada TEXT,
	DataDeNascimento DATE,
	Genero TEXT,
	Estatuto TEXT,
	Comida TEXT,
	Especialidade TEXT CONSTRAINT fk_colaborador_especialidade REFERENCES ESPECIALIDADE (Nome) ON DELETE CASCADE
													  ON UPDATE CASCADE

);

create table GRAUdePARENTESCO (
	idPaciente INTEGER CONSTRAINT fk_graudeparentesco_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
													  ON UPDATE CASCADE
				PRIMARY KEY,
	idPessoaAContactar INTEGER CONSTRAINT fk_graudeparentesco_idpessoaacontactar REFERENCES PESSOAaCONTACTAR (idPessoaAContactar) ON DELETE CASCADE
													  				ON UPDATE CASCADE

);

create table ESPECIALIDADE (
	idEspecialidade INTEGER PRIMARY KEY,
	Nome TEXT

);

create table PATOLOGIA (
	idPatologia INTEGER PRIMARY KEY,
	Nome TEXT

);

create table SEGUROSdeSAUDE (
	idSegurosDeSaude INTEGER PRIMARY KEY,
	Nome TEXT,
	Validade DATE

);

create table PacienteSegurosPatologia (
	idPaciente INTEGER KEY CONSTRAINT fk_pacientesegurospatologia_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
											       			ON UPDATE CASCADE,
	idPatologia INTEGER KEY CONSTRAINT fk_pacientesegurospatologia_idpatologia REFERENCES PATOLOGIA (idPatologia) ON DELETE CASCADE
											       			ON UPDATE CASCADE,
	idSegurosDeSaude INTEGER KEY CONSTRAINT fk_pacientesegurospatologia_idsegurosdesaude REFERENCES SEGUROSdeSAUDE (idSegurosDeSaude) ON DELETE CASCADE
											       						ON UPDATE CASCADE,
											    	
	PRIMARY KEY (
        	idPaciente,
        	idPatologia,
        	idSegurosDeSaude
        	)

);

create table TRATA (
	idPatologia INTEGER CONSTRAINT fk_trata_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
											       ON UPDATE CASCADE
				PRIMARY KEY,
	idMedico INTEGER CONSTRAINT fk_trata_idmedico REFERENCES COLABORADOR (idColaborador) ON DELETE CASCADE
												ON UPDATE CASCADE,
	Tratamento TEXT
);

create table AGENDA (
	idAgenda INTEGER PRIMARY KEY,
	HoraInicial TIME,
	HoraFinal TIME,
	Dia DATE,
	Local TEXT,
	idPaciente INTEGER CONSTRAINT fk_agenda_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
												ON UPDATE CASCADE,
	idColaborador INTEGER CONSTRAINT fk_agenda_idcolaborador REFERENCES COLABORADOR (idColaborador) ON DELETE CASCADE
													    ON UPDATE CASCADE

);

create table DATAdeNASCIMENTO (
	DataDeNascimento DATE PRIMARY KEY,
	Idade INTEGER

);
