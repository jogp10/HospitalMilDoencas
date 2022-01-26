.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

--Ao apagar um paciente, apagamos o respetivo contacto de emergencia se este nao for de mais nenhum paciente
create trigger if not exists apagaPaciente
after delete on PACIENTE
for each row 
begin
    delete from GRAUdePARENTESCO where old.idPaciente = GRAUdePARENTESCO.idPaciente ; 
    delete from PESSOAaCONTACTAR where PESSOAaCONTACTAR.idPessoaAContactar not in (select idPessoaAContactar from GRAUdePARENTESCO); 
end; 
