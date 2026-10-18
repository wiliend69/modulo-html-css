#ejercicio 9
compra = int (input("Dame el precio de tu producto para aplicar un descuento: "))

if compra >= 200000:
    print(f"El precio total con el  20% descuento es: { compra - (compra * 0.2)} ")
elif compra >= 100000:
    print(f"El precio total con el 10% descuento es: {compra - (compra * 0.1)}")
else:
    print("Tu compra no tiene descuento")