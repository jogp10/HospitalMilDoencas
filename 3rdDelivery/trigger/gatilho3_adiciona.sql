.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;


-- Ao adicionar uma agenda, verifica se não existe overlap
Create Trigger IF NOT EXISTS addAgenda
Before INSERT ON Agenda
FOR EACH ROW
WHEN exists(
	select * from Agenda 
	where ((New.HoraInicial>HoraInicial and New.HoraInicial<HoraFinal)
		or
		(New.HoraFinal>HoraInicial and New.HoraFinal<HoraFinal))
		and New.Dia = Dia
)

Begin
	Select raise(ignore);
End;


-- Ao atualizar uma agenda, verifica se não existe overlap
Create Trigger IF NOT EXISTS updateAgenda
Before Update Of HoraInicial, HoraFinal, Dia on Agenda
FOR EACH ROW
WHEN exists(
	select * from Agenda 
	where ((New.HoraInicial>HoraInicial and New.HoraInicial<HoraFinal)
		or
		(New.HoraFinal>HoraInicial and New.HoraFinal<HoraFinal))
		and New.Dia = Dia
)

Begin
	Select raise(ignore);
End;
