#Especialidade

from os import write
from random import choice, randint
import random
import datetime
now = datetime.datetime.now()

def newdata(type):
        #Data
    dia = []
    mes = []
    anosval = []
    anos = []
    diaref = 1
    mesref = 1
    
    anovalref = 2022
    anosref = 1945

    if(type>7): horaref = type+1

    fulldatas = set()

    while diaref <= 28:
        dia.append(diaref)
        diaref += 1
        
    while mesref <= 12: 
        mes.append(mesref)
        mesref += 1
        
    while anovalref < 2030: 
        anosval.append(anovalref)
        anovalref += 1

    while anosref < 2018: 
        anos.append(anosref)
        anosref += 1


    if(type==0): anos1 = str(random.choice(anos))
    if(type==1): anos1 = str(random.choice(anosval))
    mes1 = str(random.choice(mes))
    dia1 = str(random.choice(dia))
    if(len(mes1)==1): mes1 = '0' + mes1
    if(len(dia1)==1): dia1 = '0' + dia1
    data =  anos1 + '-' + mes1 + '-' + dia1
    return data




txt = open("povoar.sql", "w")
txt.write("PRAGMA foreign_keys = on;\n\n")

fulldatas = set()

#Especialidade
Especialidade = ["Estomatologia", "Pediatria", "Medicina Geral", 
                 "Fisioterapia", "Osteopatia", "Urologia"]


for i in range(6):
    txt.write("insert into ESPECIALIDADE values(" + 
                       str(i+1) + ", '" + Especialidade[i-1] + "');\n")
txt.write("\n")


#Patologia
Patologia = ["Ortodontia", "Branqueamento",
               "Gripe", "Febre",
               "Tosse", "Covid-19",
               "Anca", "Joelho",
                "Femur", "Costela",
                "Infeção Urinária", "Pedra nos Rins"]

for i in range(12):
    txt.write("insert into PATOLOGIA values(" +
            str(i+1) + ", '" + Patologia[i-1] + "');\n")
txt.write("\n")


#Seguros de Saude
SegurosDeSaude = ["Liberty", "Servicos Sociais", "AXA", "Multicare"]

for i in range(39):
    data =  newdata(1)
    txt.write("insert into SEGUROSdeSAUDE values(" +
            str(i+1) + ", '" + SegurosDeSaude[random.randint(0, 3)] + "', " +
            data + ");\n")
txt.write("\n")

#PESSOA

# Names ------------------------------------
first_names = ["José ", "Bernardo ", "Francisca ", "Francisco ", 
         "Matilde " , "João ", "Ricardo ", "Anabela ", 
         "Ana ", "Joana ", "Guilherme ", "Angelo ", 
         "Júlia ", "Juliano ", "André ", "Pedro ", 
         "Paula ", "Paulo ", "Jorge ", "Afonso ", 
         "Elisabete ", "Anderson "]


last_names = ["Araújo", "Cavalheiro", "Pinheiro", 
              "Barbosa", "Luís", "Gigante", 
              "Almeida", "Pereira", "Silva", 
              "Moreira", "Abdul", "Bianca", 
              "Guedes", "Vieira", "Veiga", 
              "Peixe", "Basílico", "Mercedes"]


# Telefones --------------------------------
idTelefone = ["91", "92"]

telefones = set()

while len(telefones) != 62: 
    num = random.choice(idTelefone) 
    
    while len(num) < 9: 
        num += str(random.randint(0, 9))

    telefones.add(num)
    
telefones = list(telefones)

idTelefone2 = ["93", "94"]

telefones2 = set()

while len(telefones2) != 40: 
    num2 = random.choice(idTelefone2) 
    
    while len(num2) < 9: 
        num2 += str(random.randint(0, 9))

    telefones2.add(num2)
    
telefones2 = list(telefones2)

idTelefone3 = ["95", "96"]

telefones3 = set()

while len(telefones3) != 120: 
    num3 = random.choice(idTelefone3) 
    
    while len(num3) < 9: 
        num3 += str(random.randint(0, 9))

    telefones3.add(num3)
    
telefones3 = list(telefones3)


# Morada ------------------------------------------
cidade = ["Porto", "Paris", "Madrid", "Lisboa",
          "Londres", "Brasília", "Matosinhos", "Berlim", "Filadélfia",
          "Granada", "Marrocos", "Copenhaga", "Roma", "Turim",
          "Faro", "Melbourne", "Vila Nova", "Braga", "Xangai",
          "Osaka", "Nova Iorque"]

local = ["Avenida ", "Rua ", "Bairro ", "Entroncamento ", "Perfeitura "]

moradas = []; 

while len(moradas) != 100: 
    mor = random.choice(local) + "de " + random.choice(cidade)
    moradas.append(mor)
    
moradas2 = []

while len(moradas2) != 100: 
    mor = random.choice(local) + "de " + random.choice(cidade)
    moradas2.append(mor)
    
moradas3 = []

while len(moradas3) != 150: 
    mor = random.choice(local) + "de " + random.choice(cidade)
    moradas3.append(mor)

# EstatutoComidaEspecialidade ------------------------

Estatuto = ["Chefe", "Sub-Chefe", "Interino", "Ajudante"]

Comida = ["Bacalhau com Broa", "Porco Assado", "Torresmos", "Camarão da Costa",
          "Tripas à Moda do Porto", "Fígado de Cebolada"]


# Profissao ---------------------------------------
profissoes = []

primary = ["Engenheiro ","Gestor ", "Doutor ","Advogado ",
           "Professor ", "Secretário ","Contabilista "]

secondary = ["Sistemas", "Informática","Civil","Contas",
             "Estados", "Programas"]

while len(profissoes) != 62: 
    prof = random.choice(primary) + "de " + random.choice(secondary)
    profissoes.append(prof)




for i in range(62):
    data =  newdata(0)
    fulldatas.add(data)
    txt.write("insert into PACIENTE values(" + 
        str(i+1) + ", " + 
        telefones[i] + ", '" + 
        random.choice(first_names) + random.choice(last_names) + "', '" +
        random.choice(moradas) + "', " +
        data + ", '" +
        random.choice(['M', 'F', 'O']) + "', '" +
        profissoes[i] +"');\n")

txt.write("\n")

for i in range(16):
    data =  newdata(0)
    fulldatas.add(data)
    txt.write("insert into PESSOAaCONTACTAR values(" + 
        str(i+1+39+23) + ", " + 
        telefones2[i] + ", '" + 
        random.choice(first_names) + random.choice(last_names) + "', '" +
        random.choice(moradas2) + "', " +
        data + ", '" +
        random.choice(['M', 'F', 'O']) + "');\n")
txt.write("\n")

for i in range(39):
    data =  newdata(0)
    fulldatas.add(data)
    txt.write("insert into COLABORADOR values(" + 
        str(i+1+39*2) + ", " + 
        telefones3[i] + ", '" + 
        random.choice(first_names) + random.choice(last_names) + "', '" +
        random.choice(moradas3) + "', " +
        data + ", '" +
        random.choice(['M', 'F', 'O']) + "', '" +
        random.choice(Estatuto) + "', null, null"
        ");\n")
txt.write("\n")

for i in range(39):
    data =  newdata(0)
    fulldatas.add(data)
    txt.write("insert into COLABORADOR values(" + 
        str(i+1+39*3) + ", " + 
        telefones3[i+40] + ", '" + 
        random.choice(first_names) + random.choice(last_names) + "', '" +
        random.choice(moradas3) + "', " +
        data + ", '" +
        random.choice(['M', 'F', 'O']) + "', null, '" + 
        random.choice(Comida) + "', null" +
        ");\n")
txt.write("\n")


mediespe = {}

for i in range(39):
    data =  newdata(0)
    especia = str(random.randint(1, 6))
    if especia not in mediespe:
        mediespe[especia] = list()
    mediespe[especia].extend([i+1+39*4])
    fulldatas.add(data)
    txt.write("insert into COLABORADOR values(" + 
        str(i+1+39*4) + ", " + 
        telefones3[i+40*2] + ", '" + 
        random.choice(first_names) + random.choice(last_names) + "', '" +
        random.choice(moradas3) + "', " +
        data + ", '" +
        random.choice(['M', 'F', 'O']) + "', null, null, " + especia +
         ");\n")
txt.write("\n")


#GrauDeParentesco

for i in range(62):
    txt.write("insert into GRAUdePARENTESCO values(" +
               str(i+1) + ", " + str(randint(63, 78)) + ");\n")
txt.write("\n")


#PacienteSegurosPatologia
for i in range(62):
    txt.write("insert into PacienteSegurosPatologia values(" + 
            str(i+1) + ", " + str(randint(1, 12)) + 
            ", " + str(randint(1, 39)) + ");\n")
txt.write("\n")

fulldatas = set(fulldatas)
fulldatas = sorted(fulldatas)
for i in fulldatas:
    print(i)
    txt.write("insert into DATAdeNASCIMENTO values(" +
        i + ", " + str(now.year-int(i[0]+i[1]+i[2]+i[3])) + ");\n")
txt.write("\n")


for patologi in range(1, 13):
    p = patologi
    for especialidad in mediespe.keys():
        if(int(p/2.0+0.5)!=int(especialidad) ): continue
        for medic in mediespe[especialidad]:
            txt.write("insert into TRATA values(" + 
            str(patologi) + ", " + str(medic) + ", null);\n")
txt.write("\n")

