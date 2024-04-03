a = int(input("Conversor de cm: \n"))

#cm a pulgadas
Cmp = round(a * 0.393701, 2)
print("cm a pulgadas es: ", Cmp)
#Cm a yardas
cmy =  a * 0.109361
print("cm a millas es: ", cmy)
#cm a millas
cmm = round(a * (1.0 / 160934), 2)
print("cm a millas: ", cmm)
