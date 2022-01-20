.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

create trigger apagapaciente
after delete on PACIENTE
referencing old row as pac 
for each row 
begin
    delete from GRAUdePARENTESCO where pac.idPaciente = GRAUdePARENTESCO.idPaciente 

    delete from PESSOAaCONTACTAR where PESSOAaCONTACTAR.idPessoaAContactar = GRAUdePARENTESCO.old.idPessoaAContactar and PESSOAaCONTACTAR.idPessoaAContactar not in 
                                       (select *
                                        from GRAUdePARENTESCO )                           
end; 
