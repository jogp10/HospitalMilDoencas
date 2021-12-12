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
	idPaciente 		INTEGER PRIMARY KEY,
	Telefone 		INTEGER UNIQUE,
	Nome 			TEXT 	NOT NULL,
	Morada			TEXT 	DEFAULT '',
	DataDeNascimento	DATE 	NOT NULL,
	Genero 		TEXT 	NOT NULL,
	Profissao  		TEXT 	DEFAULT '',
	
	CONSTRAINT genero CHECK (Genero = 'M' or Genero = 'F' or Genero = 'O'),
	CONSTRAINT datadenascimento_paciente CHECK ( DataDeNascimento < Date('%Y-%m-%d', 'now'))
);

create table PESSOAaCONTACTAR (
	idPessoaAContactar 	INTEGER PRIMARY KEY,
	Telefone 		INTEGER UNIQUE,
	Nome			TEXT 	NOT NULL,
	Morada			TEXT 	DEFAULT '',
	DataDeNascimento	DATE 	NOT NULL,
	Genero 		TEXT NOT NULL,
	
	CONSTRAINT genero CHECK (Genero = 'M' or Genero = 'F' or Genero = 'O')

);

create table COLABORADOR (
	idColaborador 		INTEGER PRIMARY KEY,
	Telefone 		INTEGER UNIQUE,
	Nome 			TEXT 	NOT NULL,
	Morada 		TEXT 	DEFAULT '',
	DataDeNascimento 	DATE 	NOT NULL,
	Genero 		TEXT 	NOT NULL,
	Estatuto 		TEXT,
	Comida 		TEXT,
	idEspecialidade 	INTEGER 		CONSTRAINT fk_colaborador_idespecialidade REFERENCES ESPECIALIDADE (idEspecialidade) 
												ON DELETE CASCADE ON UPDATE CASCADE,
													
	CONSTRAINT tipoColaborador_colaborador CHECK(
		(Estatuto = NOT NULL and Comida = NULL and idEspecialidade = NULL) or
		(Estatuto = NULL and Comida = NOT NULL and idEspecialidade = NULL) or
		(Estatuto = NULL and Comida = NULL and idEspecialidade = NOT NULL)),
		
	CONSTRAINT genero CHECK (Genero = 'M' or Genero = 'F' or Genero = 'O')

);

create table GRAUdePARENTESCO (
	idPaciente 		INTEGER PRIMARY KEY	CONSTRAINT fk_graudeparentesco_idpaciente REFERENCES PACIENTE (idPaciente) 
												ON DELETE CASCADE ON UPDATE CASCADE,
	idPessoaAContactar 	INTEGER 		CONSTRAINT fk_graudeparentesco_idpessoaacontactar REFERENCES PESSOAaCONTACTAR (idPessoaAContactar) 
												ON DELETE SET NULL ON UPDATE CASCADE
													  	
													  				
);

create table ESPECIALIDADE (
	idEspecialidade 	INTEGER PRIMARY KEY,
	Nome 			TEXT 	NOT NULL

);

create table PATOLOGIA (
	idPatologia 		INTEGER PRIMARY KEY,
	Nome 			TEXT 	NOT NULL

);

create table SEGUROSdeSAUDE (
	idSegurosDeSaude 	INTEGER PRIMARY KEY,
	Nome 			TEXT 	NOT NULL,
	Validade 		DATE 	NOT NULL

);

create table PacienteSegurosPatologia (
	idPaciente 		INTEGER		CONSTRAINT fk_pacientesegurospatologia_idpaciente REFERENCES PACIENTE (idPaciente) 
												ON DELETE CASCADE ON UPDATE CASCADE,
	idPatologia 		INTEGER		CONSTRAINT fk_pacientesegurospatologia_idpatologia REFERENCES PATOLOGIA (idPatologia) 
												ON DELETE CASCADE ON UPDATE CASCADE,
	idSegurosDeSaude 	INTEGER		CONSTRAINT fk_pacientesegurospatologia_idsegurosdesaude REFERENCES SEGUROSdeSAUDE (idSegurosDeSaude) 
												ON DELETE CASCADE ON UPDATE CASCADE,
											    	
	PRIMARY KEY (
        	idPaciente,
        	idPatologia,
        	idSegurosDeSaude
        	)


);

create table TRATA (
	idPatologia 		INTEGER 		CONSTRAINT fk_trata_idpaciente REFERENCES PACIENTE (idPaciente) 
												ON DELETE CASCADE ON UPDATE CASCADE,
	idMedico 		INTEGER 		CONSTRAINT fk_trata_idmedico REFERENCES COLABORADOR (idColaborador) 
												ON DELETE CASCADE ON UPDATE CASCADE,
	Tratamento 		TEXT DEFAULT '',
	
	PRIMARY KEY (
        	idMedico,
        	idPatologia
        	)
);

create table AGENDA (
	idAgenda 		INTEGER PRIMARY KEY,
	HoraInicial 		DATE 	NOT NULL,
	HoraFinal 		DATE 	NOT NULL,
	Dia 			DATE 	NOT NULL,
	Local 			TEXT 	NOT NULL,
	idPaciente 		INTEGER 		CONSTRAINT fk_agenda_idpaciente REFERENCES PACIENTE (idPaciente) 
												ON DELETE CASCADE ON UPDATE CASCADE,
	idColaborador 		INTEGER 		CONSTRAINT fk_agenda_idcolaborador REFERENCES COLABORADOR (idColaborador) 
												ON DELETE CASCADE ON UPDATE CASCADE,
												
        CONSTRAINT agendadequem_agenda CHECK(
        	(idPaciente = NULL and idColaborador = NOT NULL) or
        	(idPaciente = NOT NULL and idColaborador = NULL)),	
        	
        CONSTRAINT horafinalhorainicial_agenda CHECK(
        	HoraFinal>HoraInicial)		
        		

);

create table DATAdeNASCIMENTO (
	DataDeNascimento 	DATE 	PRIMARY KEY,
	Idade 			INTEGER NOT NULL,
	
	CONSTRAINT idade_datadenascimento CHECK ( Date('%Y', 'now') - Date('%Y', DataDeNascimento) = Idade)
	
);

