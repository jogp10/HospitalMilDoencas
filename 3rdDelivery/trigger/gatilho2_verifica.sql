.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

insert into PACIENTE values(1, 928596134, 'Francisca Pinheiro', 'Avenida de Marrocos', 2006-09-10, 'F', 'Advogado de Estados');
insert into PACIENTE values(2, 928596135, 'Francisca Pinheiro', 'Avenida de Marrocos', 2006-09-10, 'F', 'Advogado de Estados');
insert into PACIENTE values(3, 928596136, 'Francisca Pinheiro', 'Avenida de Marrocos', 2006-09-10, 'F', 'Advogado de Estados');

insert into PESSOAaCONTACTAR values(63, 947524523, 'Bernardo Mercedes', 'Rua de Marrocos', 1948-12-02, 'M');
insert into PESSOAaCONTACTAR values(64, 946051524, 'José Araújo', 'Avenida de Lisboa', 1957-02-14, 'F');

insert into GRAUdePARENTESCO values(1, 63);
insert into GRAUdePARENTESCO values(2, 64);
insert into GRAUdePARENTESCO values(3, 64);

.print ''

select *
from PACIENTE; 

.print ''

select * 
from PESSOAaCONTACTAR; 

.print ''

select *
from GRAUdePARENTESCO; 

.print ''
.print 'Ao apagar um paciente, apagamos o respetivo contacto de emergencia se este nao for de mais nenhum paciente; '
.print ''



