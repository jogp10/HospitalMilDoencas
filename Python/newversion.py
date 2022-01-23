#Especialidade

from os import write
from random import choice, randint
import random
import datetime
now = datetime.datetime.now()

from datetime import date

def calculate_age(born):
 
    today = date.today()
    return today.year - born.year - ((today.month, today.day) < (born.month, born.day)) 

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


    if(type==0): anos1 = random.choice(anos)
    if(type==1): anos1 = random.choice(anosval)
    mes1 = random.choice(mes)
    dia1 = random.choice(dia)
    x = datetime.datetime(anos1, mes1, dia1)
    anos1 = str(anos1)
    mes1 = str(mes1)
    dia1 = str(dia1)
    if(len(mes1)==1): mes1 = '0' + mes1
    if(len(dia1)==1): dia1 = '0' + dia1
    data =  anos1 + '-' + mes1 + '-' + dia1
    if(type==1): return data
    return x

def newhour(type):
    resu = []

    #Horas
    hora = []
    horapac = []
    minuto = []

    horaref = 0
    while horaref < 24:
        hora.append(horaref)
        horaref += 1
        if(8<horaref<22):
            horapac.append(horaref)
    
    minuto.append(15)
    minuto.append(30)
    minuto.append(45)
    minuto.append(00)


    if(type==0): hora1 = random.choice(hora[ : -1])
    if(type==1): hora1 = random.choice(horapac[ : -1])
    minuto1 = random.choice(minuto)

    hora1 = str(hora1)
    minuto1 = str(minuto1)
    if(len(hora1)==1): hora1 = '0' + hora1
    if(len(minuto1)==1): minuto1 = '0' + minuto1
    hora0 = hora1 + ":" + minuto1
    resu.append(hora0)

    if(type==0): hora1 = random.choice(hora[ int(resu[0][:2])+1 :])
    if(type==1): hora1 = random.choice(horapac[ int(resu[0][:2])-8 : ] )
    minuto1 = random.choice(minuto)

    hora1 = str(hora1)
    minuto1 = str(minuto1)
    if(len(hora1)==1): hora1 = '0' + hora1
    if(len(minuto1)==1): minuto1 = '0' + minuto1
    hora0 = hora1 + ":" + minuto1
    resu.append(hora0)


    return resu


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
    txt.write("insert into SEGUROdeSAUDE values(" +
            str(i+1) + ", '" + SegurosDeSaude[random.randint(0, 3)] + "', '" +
            str(data)[:10] + "');\n")
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

# EstatutoNivelExperienciaEspecialidade ------------------------

Estatuto = ["Chefe", "Sub-Chefe", "Interino", "Ajudante"]

NivelExperiencia = ["Chef", "Aspirante", "Ajudante Cozinha", "Empregado de mesa",
          "Limpa Pratos"]



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
        random.choice(moradas) + "', '" +
        str(data)[:10] + "', '" +
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
        random.choice(moradas2) + "', '" +
        str(data)[:10] + "', '" +
        random.choice(['M', 'F', 'O']) + "');\n")
txt.write("\n")

for i in range(39):
    data =  newdata(0)
    fulldatas.add(data)
    txt.write("insert into COLABORADOR values(" + 
        str(i+1+39*2) + ", " + 
        telefones3[i] + ", '" + 
        random.choice(first_names) + random.choice(last_names) + "', '" +
        random.choice(moradas3) + "', '" +
        str(data)[:10] + "', '" +
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
        random.choice(moradas3) + "', '" +
        str(data)[:10] + "', '" +
        random.choice(['M', 'F', 'O']) + "', null, '" + 
        random.choice(NivelExperiencia) + "', null" +
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
        random.choice(moradas3) + "', '" +
        str(data)[:10] + "', '" +
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
    txt.write("insert into PacienteSeguroPatologia values(" + 
            str(i+1) + ", " + str(randint(1, 12)) + 
            ", " + str(randint(1, 39)) + ");\n")
txt.write("\n")

fulldatas = sorted(fulldatas)
for i in fulldatas:
    print(i)
    txt.write("insert into DATAdeNASCIMENTO values('" +
        str(i)[:10] + "', " + str(calculate_age(i)) + ");\n")
txt.write("\n")

for patologi in range(1, 13):
    p = patologi
    for especialidad in mediespe.keys():
        if(int(p/2.0+0.5)!=int(especialidad) ): continue
        for medic in mediespe[especialidad]:
            txt.write("insert into TRATA values(" + 
            str(patologi) + ", " + str(medic) + ", null);\n")
txt.write("\n")

local = ["Piso 0", "Piso 1", "Piso 2", "Piso 3", "Lab 02", "Cozinha", "Sala 1", "Sala 2", "Bloco A", "Bloco B", "Setor 1", "Setor 2"]

for i in range(1, 50):
    hour = newhour(1)
    txt.write("insert into AGENDA values(" + str(i) + ", '" + str(hour[0]) + "', '" + 
                str(hour[1]) + "', '" + str(newdata(0))[:10] + "', '" + random.choice(local) + "', " + str(randint(1, 62)) + ", null);\n" )
for i in range(51, 100):
    hour = newhour(1)
    txt.write("insert into AGENDA values(" + str(i) + ", '" + str(hour[0]) + "', '" + 
                str(hour[1]) + "', '" + str(newdata(1))[:10] + "', '" + random.choice(local) + "', " + str(randint(1, 62)) + ", null);\n" )
for i in range(101, 150):
    hour = newhour(0)
    txt.write("insert into AGENDA values(" + str(i) + ", '" + str(hour[0]) + "', '" + 
                str(hour[1]) + "', '" + str(newdata(0))[:10] + "', '" + random.choice(local) + "', null, " + str(randint(79, 195)) + ");\n" )
for i in range(151, 200):
    hour = newhour(0)
    txt.write("insert into AGENDA values(" + str(i) + ", '" + str(hour[0]) + "', '" + 
                str(hour[1]) + "', '" + str(newdata(1))[:10] + "', '" + random.choice(local) + "', null, " +  str(randint(79, 195)) + ");\n" )

        

txt.write("\n")
