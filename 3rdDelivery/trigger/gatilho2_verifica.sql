.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

.print ''

select *
from PACIENTE

.print ''

select * 
from PESSOAaCONTACTAR

.print ''
.print 'Ao apagar um paciente, apagamos o respetivo contacto de emergencia se este nao for de mais nenhum paciente; '
.print ''

delete from PACIENTE where PACIENTE.idPaciente = 62; 

