.mode columns
.headers on
PRAGMA foreign_keys = ON;

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
	idPaciente INTEGER PRIMARY KEY NOT NULL,
	Telefone INTEGER UNIQUE,
	Nome TEXT NOT NULL,
	Morada TEXT DEFAULT '',
	DataDeNascimento DATE NOT NULL,
	Genero TEXT NOT NULL,
	Profissao  TEXT DEFAULT ''	
);

create table PESSOAaCONTACTAR (
	idPessoaAContactar INTEGER PRIMARY KEY NOT NULL,
	Telefone INTEGER UNIQUE,
	Nome TEXT NOT NULL,
	Morada TEXT DEFAULT '',
	DataDeNascimento DATE NOT NULL,
	Genero TEXT NOT NULL

);

create table COLABORADOR (
	idColaborador INTEGER PRIMARY KEY NOT NULL,
	Telefone INTEGER UNIQUE,
	Nome TEXT NOT NULL,
	Morada TEXT DEFAULT '',
	DataDeNascimento DATE NOT NULL,
	Genero TEXT NOT NULL,
	Estatuto TEXT,
	Comida TEXT,
	Especialidade TEXT CONSTRAINT fk_colaborador_especialidade REFERENCES ESPECIALIDADE (Nome) ON DELETE CASCADE
													  ON UPDATE CASCADE

);

create table GRAUdePARENTESCO (
	idPaciente INTEGER CONSTRAINT fk_graudeparentesco_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
													  ON UPDATE CASCADE
				PRIMARY KEY NOT NULL,
	idPessoaAContactar INTEGER CONSTRAINT fk_graudeparentesco_idpessoaacontactar REFERENCES PESSOAaCONTACTAR (idPessoaAContactar) ON DELETE SET NULL
													  				ON UPDATE CASCADE
													  				

);

create table ESPECIALIDADE (
	idEspecialidade INTEGER PRIMARY KEY NOT NULL,
	Nome TEXT NOT NULL

);

create table PATOLOGIA (
	idPatologia INTEGER PRIMARY KEY NOT NULL,
	Nome TEXT NOT NULL

);

create table SEGUROSdeSAUDE (
	idSegurosDeSaude INTEGER PRIMARY KEY NOT NULL,
	Nome TEXT NOT NULL,
	Validade DATE NOT NULL

);

create table PacienteSegurosPatologia (
	idPaciente INTEGER KEY CONSTRAINT fk_pacientesegurospatologia_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
											       			ON UPDATE CASCADE
											       			NOT NULL,
	idPatologia INTEGER KEY CONSTRAINT fk_pacientesegurospatologia_idpatologia REFERENCES PATOLOGIA (idPatologia) ON DELETE CASCADE
											       			ON UPDATE CASCADE
											       			NOT NULL,
	idSegurosDeSaude INTEGER KEY CONSTRAINT fk_pacientesegurospatologia_idsegurosdesaude REFERENCES SEGUROSdeSAUDE (idSegurosDeSaude) ON DELETE CASCADE
											       						ON UPDATE CASCADE
											       						NOT NULL,
											    	
	PRIMARY KEY (
        	idPaciente,
        	idPatologia,
        	idSegurosDeSaude
        	)

);

create table TRATA (
	idPatologia INTEGER CONSTRAINT fk_trata_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
											       ON UPDATE CASCADE
				PRIMARY KEY NOT NULL,
	idMedico INTEGER CONSTRAINT fk_trata_idmedico REFERENCES COLABORADOR (idColaborador) ON DELETE CASCADE
												ON UPDATE CASCADE
												NOT NULL,
	Tratamento TEXT
);

create table AGENDA (
	idAgenda INTEGER PRIMARY KEY NOT NULL,
	HoraInicial TIME NOT NULL,
	HoraFinal TIME NOT NULL,
	Dia DATE NOT NULL,
	Local TEXT NOT NULL,
	idPaciente INTEGER CONSTRAINT fk_agenda_idpaciente REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE
												ON UPDATE CASCADE,
	idColaborador INTEGER CONSTRAINT fk_agenda_idcolaborador REFERENCES COLABORADOR (idColaborador) ON DELETE CASCADE
													    ON UPDATE CASCADE

);

create table DATAdeNASCIMENTO (
	DataDeNascimento DATE PRIMARY KEY NOT NULL,
	Idade INTEGER NOT NULL,
	CHECK(SELECT DATE(now, NNN years) - SELECT strftime('%Y', 'DataDeNascimento') = Idade)
);
