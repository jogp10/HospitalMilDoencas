.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

create trigger if not exists apagaPaciente
after delete on PACIENTE
for each row 
begin
    delete from GRAUdePARENTESCO where old.idPaciente = GRAUdePARENTESCO.idPaciente ; 
    delete from PESSOAaCONTACTAR where PESSOAaCONTACTAR.idPessoaAContactar not in (select idPessoaAContactar from GRAUdePARENTESCO); 
end; 