# inset into PACIENTE values(); 
import random

# IDPaciente ------------------------------
ids = []
n = 1

while len(ids) <= 40: 
    ids.append(n)
    n += 1


# Telefones --------------------------------
idTelefone = ["91", "92", "93"]

telefones = []

while len(telefones) != 40: 
    num = random.choice(idTelefone) 
    
    while len(num) < 9: 
        num += str(random.randint(0, 9))

    telefones.append(num)
     

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
    data = str(random.choice(dia)) + '/' + str(random.choice(mes)) + '/' + str(random.choice(anos))
    datanascimento.append(data)       
           
           
# Genero ------------------------------------------
genero = ['M', 'F', 'Other']
generos = []

while len(generos) != 40: 
    generos.append(random.choice(genero)) 

      
# Profissao ---------------------------------------
profissoes = []

primary = ["Engenheiro ","Gestor ", "Doutor ","Advogado ",
           "Professor ", "Secretário ","Contabilista "]

secondary = ["Sistemas", "Informática","Cívil","Contas",
             "Estados", "Programas"]

while len(profissoes) != 40: 
    prof = random.choice(primary) + "de " + random.choice(secondary)
    profissoes.append(prof)


# Adding to file ----------------------------------
txt = open("names.txt", "w")

for i in range(39): 
    txt.write("insert into PACIENTE values(" +  
               str(ids[i]) + ", " + 
               str(telefones[i]) + ", '" + 
               str(names[i]) + "', '" +
               str(moradas[i]) + "', '" +
               str(datanascimento[i]) + "', '" +
               str(generos[i]) + "', '" +
               str(profissoes[i]) +
              "');" + "\n")
              
              
txt.close()