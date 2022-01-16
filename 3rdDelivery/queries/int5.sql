.mode columns
.headers on
.nullvalue NULL

# Mostrar pacientes e o seu contacto de emergencia

select Paciente.Nome, PessoaaContactar.Nome, PessoaaContactar.Telefone, PessoaaContactar.Genero
from Paciente, PessoaaContactar, GraudeParentesco 
where Paciente.idPaciente = GraudeParentesco.idPaciente 
    and PessoaaContactar.idPessoaaContactar = GraudeParentesco.idPessoaaContactar
group by Paciente.Nome
order by Paciente.Nome ASC; 


