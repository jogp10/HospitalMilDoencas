# inset into PACIENTE values(); 
import random

# IDPaciente ------------------------------
idPACIENTE = set()
idPESSOAaCONTACTAR = set()
idCOLABORADOR = set()

while len(idPACIENTE) <= 40: 
    idPACIENTE.add(random.randrange(100, 999))

idPACIENTE = list(idPACIENTE)

while len(idPESSOAaCONTACTAR) != 40: 
    idPESSOAaCONTACTAR.add(random.randrange(10, 99))
    
idPESSOAaCONTACTAR = list(idPESSOAaCONTACTAR)

colaborador = [random.randrange(1000, 2000), random.randrange(3000, 4000), random.randrange(5000,6000) ]

while len(idCOLABORADOR) != 40: 
    a = random.randrange(1000, 2000)
    b = random.randrange(3000, 4000)
    c = random.randrange(5000, 6000)
    vec = [a, b, c]
    
    idCOLABORADOR.add(random.choice(vec))
    
idCOLABORADOR = list(idCOLABORADOR)


# Telefones --------------------------------
idTelefone = ["91", "92"]

telefones = set()

while len(telefones) != 40: 
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

while len(telefones3) != 40: 
    num3 = random.choice(idTelefone3) 
    
    while len(num3) < 9: 
        num3 += str(random.randint(0, 9))

    telefones3.add(num3)
    
telefones3 = list(telefones3)


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


names = set()      
       

while len(names) != 40 :
    name = random.choice(first_names) + random.choice(last_names)
    names.add(name)
  
names = list(names)

# Pessoa a contactar
namesContact = set()

while len(namesContact) != 40: 
    name2 = random.choice(first_names) + random.choice(last_names)
    namesContact.add(name2)

namesContact = list(namesContact)

namesContact2 = set()

while len(namesContact2) != 40: 
    name2 = random.choice(first_names) + random.choice(last_names)
    namesContact2.add(name2)

namesContact2 = list(namesContact2)

# Morada ------------------------------------------
cidade = ["Porto", "Paris", "Madrid", "Lisboa",
          "Londres", "Brasília", "Matosinhos", "Berlim", "Filadélfia",
          "Granada", "Marrocos", "Copenhaga", "Roma", "Turim",
          "Faro", "Melbourne", "Vila Real", "Braga", "Xangai",
          "Osaka", "Nova Iorque"]

local = ["Avenida ", "Rua ", "Bairro ", "Entroncamento ", "Perfeitura "]

moradas = []; 

while len(moradas) != 40: 
    mor = random.choice(local) + "de " + random.choice(cidade)
    moradas.append(mor)
    
moradas2 = []

while len(moradas2) != 40: 
    mor = random.choice(local) + "de " + random.choice(cidade)
    moradas2.append(mor)
    
moradas3 = []

while len(moradas3) != 40: 
    mor = random.choice(local) + "de " + random.choice(cidade)
    moradas3.append(mor)

# DataDeNascimento --------------------------------
datanascimento = []
dia = []
mes = []
anos = []
diaref = 1
mesref = 1
anoref = 1950

while diaref <= 30:
    dia.append(diaref)
    diaref += 1
    
while mesref <= 12: 
    mes.append(mesref)
    mesref += 1
    
while anoref < 2005: 
    anos.append(anoref)
    anoref += 1

while len(datanascimento) != 40: 
    data = str(random.choice(dia)) + '-' + str(random.choice(mes)) + '-' + str(random.choice(anos))
    datanascimento.append(data)       
     
datanascimento2 = []   

while len(datanascimento2) != 40: 
    data = str(random.choice(dia)) + '-' + str(random.choice(mes)) + '-' + str(random.choice(anos))
    datanascimento2.append(data)  

datanascimento3 = []   

while len(datanascimento3) != 40: 
    data = str(random.choice(dia)) + '-' + str(random.choice(mes)) + '-' + str(random.choice(anos))
    datanascimento3.append(data)     
    
validade = []

while len(validade) != 40: 
    vali = str(random.choice(dia)) + '-' + str(random.choice(mes)) + '-' + str(random.choice(anos))
    validade.append(vali)     
           
# Genero ------------------------------------------
genero = ['M', 'F', 'O']
generos = []
generos2 = []
generos3 = []

while len(generos) != 40: 
    generos.append(random.choice(genero)) 

while len(generos2) != 40: 
    generos2.append(random.choice(genero)) 
      
while len(generos3) != 40: 
    generos3.append(random.choice(genero)) 
# Profissao ---------------------------------------
profissoes = []

primary = ["Engenheiro ","Gestor ", "Doutor ","Advogado ",
           "Professor ", "Secretário ","Contabilista "]

secondary = ["Sistemas", "Informática","Civil","Contas",
             "Estados", "Programas"]

while len(profissoes) != 40: 
    prof = random.choice(primary) + "de " + random.choice(secondary)
    profissoes.append(prof)



# EstatutoComidaEspecialidade ------------------------

Estatuto = ["Chefe", "Sub-Chefe", "Interino", "Ajudante"]

Comida = ["Bacalhau com Broa", "Porco Assado", "Torresmos", "Camarão da Costa",
          "Tripas à Moda do Porto", "Fígado de Cebolada"]

Especialidade = ["Estomatologia", "Pediatria", "Medicina Geral", 
                 "Fisioterapia", "Osteopatia", "Urologia"]

vetor = [Estatuto, Comida, Especialidade]
vetor2 =[]

while len(vetor2) != 40: 
    decisao = random.choice(random.choice(vetor))
    vetor2.append(decisao)

# Adding to file ----------------------------------
txt = open("names.txt", "w")

for i in range(39): 
    txt.write("insert into PACIENTE values(" +  
               str(idPACIENTE[i]) + ", " + 
               str(telefones[i]) + ", '" + 
               str(names[i]) + "', '" +
               str(moradas[i]) + "', '" +
               str(datanascimento[i]) + "', '" +
               str(generos[i]) + "', '" +
               str(profissoes[i]) +
              "');" + "\n")
    
    
for i in range(39): 
    txt.write("insert into PESSOAaCONTACTAR values(" + 
              str(idPESSOAaCONTACTAR[i]) + ", " +
              str(telefones2[i]) + ", '" + 
              namesContact[i] + "', '" + 
              moradas2[i] + "', '" + 
              datanascimento2[i] + "', '" +
              generos2[i] + "');" + "\n")
              
      
colabGERAL = []

for i in range(39): 
    colab = [str(idCOLABORADOR[i]), str(telefones3[i]), namesContact2[i], 
             moradas3[i], datanascimento3[i], generos3[i], vetor2[i]]
    
    colabGERAL.append(colab)
    
    txt.write("insert into COLABORADOR values(" +
              str(idCOLABORADOR[i]) + ", " +
              str(telefones3[i]) + ", '" + 
              namesContact2[i] + "', '" + 
              moradas3[i] + "', '" +
              datanascimento3[i] + "', '" + 
              generos3[i] + "', '" + 
              vetor2[i] + "'); " + "\n") 
    
for i in range(39):             
    if vetor2[i] in Especialidade : 
         if (vetor2[i] == "Estomatologia"):
             txt.write("insert into ESPECIALIDADE values(" + 
                       str(1) + ", 'Estomatologia'); \n")
             
         if (vetor2[i] == "Pediatria"): 
             txt.write("insert into ESPECIALIDADE values(" + 
                       str(2) + ", 'Pediatria'); \n")
             
         if (vetor2[i] == "Medicina Geral"): 
             txt.write("insert into ESPECIALIDADE values(" + 
                       str(3) + ", 'Medicina Geral'); \n")
             
         if (vetor2[i] == "Fisioterapia"):
             txt.write("insert into ESPECIALIDADE values(" + 
                       str(4) + ", 'Fisioterapia'); \n")
             
         if (vetor2[i] == "Osteopatia"): 
             txt.write("insert into ESPECIALIDADE values(" + 
                       str(5) + ", 'Osteopatia'); \n")
             
         if (vetor2[i] == "Urologia"): 
             txt.write("insert into ESPECIALIDADE values(" + 
                       str(6) + ", 'Urologia'); \n")
  
for i in range(39):              
    txt.write("insert into GRAUdePARENTESCO values(" + 
              str(idCOLABORADOR[i]) + ", " + 
              str(idPESSOAaCONTACTAR[i]) + "); \n")

empresas = [1, 2, 3, 4]
for i in range(39): 
    empress = random.choice(empresas)
    
    if empress == 1: 
        nam = "Liberty"
    if empress == 2: 
        nam = "Servilos Sociais"
    if empress == 3: 
        nam = "Axa"
    if empress == 4: 
        nam = "Multicare"
    
    
    txt.write("insert into SEGUROSdeSAUDE values(" + 
              str(empress) + ", '" +
              nam + "', '" +
              validade[i] + "'); \n")
    
    
estom = ["Ortodontia", "Branqueamento"]
pedia = ["Gripe", "Febre"] 
medi = ["Tosse", "Covid-19"]
fisio = ["Anca", "Joelho"]
osteo = ["Femur", "Costela"]
urol = ["Infeção Urinária", "Circuncisão"] 
ger = [estom, pedia, medi, fisio, osteo, urol]  

for i in range(39): 
    cond = random.choice(ger)
    
    if cond is estom: 
        id = 1
        pat = random.choice(estom)
    if cond is pedia: 
        id = 2
        pat = random.choice(pedia)
    if cond is medi:
        id = 3
        pat = random.choice(medi)
    if cond is fisio: 
        id = 4
        pat = random.choice(fisio)
    if cond is osteo: 
        id = 5
        pat = random.choice(osteo)
    if cond is urol: 
        id = 6
        pat = random.choice(urol)
    
    txt.write("insert into PATOLOGIA values(" + 
              str(id) + ", '" + 
              pat + "'); \n")
    
    
# TODO PacienteSegurosPatologia para baixo
# As variáveis já estão todas definidas é so criar associaçoes por index de vetor como já
# tinha feito antes
# AGENDA é nova mas tem associações
    
txt.close()
