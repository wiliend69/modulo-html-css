#ejercicio 6
numCal = float (input("Dame un numero Bebe: "))
numCal2 = float (input("Dame otro numero: "))

operation = str (input("Dime que quiere hacer: +,-,*,/ : "))

if operation == "+":
    print("La suma es: ",  numCal + numCal2)
elif operation == "-":
    print("La resta es:", numCal-numCal2)
elif operation == "*":
    print ("La multiplicacion es: ",  numCal* numCal2)
elif operation == "/":
    if numCal2 != 0 and numCal!=0:
        print("la division es: ", numCal / numCal2)
    else :
        print("No se puede dividir entre cero")  