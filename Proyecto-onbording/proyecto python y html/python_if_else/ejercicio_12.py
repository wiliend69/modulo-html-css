lado1 = int (input("Dame el primer lado del triangulo: "))
lado2 = int (input("Dame el segundo lado del triangulo: "))
lado3 = int (input("Dame el tercer lado del triangulo:"))

if lado1 == lado2 == lado3 :
    print("tu triangulo es un equilatero")
elif lado1 == lado2 or lado2 == lado3 or lado3 == lado1:
    print("tu triangulo es un isoceles")
else:
    print("Tu triangulo es un escaleno")