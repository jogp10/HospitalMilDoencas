.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

drop trigger if exists apagapaciente; 

delete from PACIENTE where Paciente.idPaciente  = 1;
delete from PACIENTE where Paciente.idPaciente  = 2;
delete from PACIENTE where Paciente.idPaciente  = 3;

delete from PESSOAaCONTACTAR where PESSOAaCONTACTAR.idPessoaAContactar = 63; 
delete from PESSOAaCONTACTAR where PESSOAaCONTACTAR.idPessoaAContactar = 64;

delete from GRAUdePARENTESCO where GRAUdePARENTESCO.idPaciente = 1; 
delete from GRAUdePARENTESCO where GRAUdePARENTESCO.idPaciente = 2; 
delete from GRAUdePARENTESCO where GRAUdePARENTESCO.idPaciente = 3;   
