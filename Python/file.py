# inset into PACIENTE values(); 
import random

first_names = {"José ", "Bernardo ", "Francisca ", "Francisco ", 
         "Matilde " , "João ", "Ricardo ", "Anabela ", 
         "Ana ", "Joana ", "Guilherme ", "Angelo ", 
         "Júlia ", "Juliano ", "André ", "Pedro ", 
         "Paula ", "Paulo ", "Jorge ", "Afonso ", 
         "Elisabete ", "Anderson "}

last_names = {"Araújo", "Cavalheiro", "Pinheiro", 
              "Barbosa", "Luís", "Gigante", 
              "Almeida", "Pereira", "Silva", 
              "Moreira", "Abdul", "Bianca", 
              "Guedes", "Vieira", "Veiga", 
              "Peixe", "Basílico", "Mercedes"}


names = set()      
       

while len(names) <= 40 :
    name = random.choice(first_names) + random.choice(last_names)
    names.add(name)
    
for i in names: 
    print (i)