saldo = float (500000)
opc = int (input ("Ingresa el numero de la opcion que quiere consultar: \n 1. Consultar\n 2. Retirar dinero\n 3. Depositar dinero\n 4.salir: "))
if opc == 1:
    print("Saldo en el cajero es: ", saldo)
elif opc == 2:
    saldo = saldo - float(input("Cuanto vas a retirar: "))
    print ("Tu saldo actual despues del retiro es:",  saldo)
elif opc == 3: 
    saldo = saldo + float (input("Cuanto vas a depositar: "))
    print("Tu salgo actual tras el deposito es: ", saldo)
elif opc == 4:
    print("Gracias por utilizar nuestro cajero, hasta luego")
else:
    print("Esa opcion no existe crack")
