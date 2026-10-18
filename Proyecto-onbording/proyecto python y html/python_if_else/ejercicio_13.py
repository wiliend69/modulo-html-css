selec = int (input("Indica con un numero la operacion quiere hacer: \n 1.Sumar\n 2.restar\n 3.multiplicar \n 4.Dividir\n opcion: " ))
num1 = float (input("Ingresa el primer valor: "))
num2 = float (input("ingresa el segundo valor: "))

if selec == 1 :
    print("Tu suma es: ", num1 + num2)
elif selec == 2:
    print("Tu resta es: ", num1 - num2)
elif selec == 3 :
    print("Tu multiplicacion es: ", num1 * num2)
elif selec == 4:
    if num1 != 0 and num2 !=0:
        print("la division es: ", num1 / num2)
    else :
        print("No se puede dividir entre cero")  
else:
    print("Esa opcion no exite mano")