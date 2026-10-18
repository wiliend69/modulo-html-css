print("Bienvenido")
cliente = input ("Dame el nombre del cliente: ")
prod = input ("Como se llama el producto: ")
precio =int (input ("Cuanto costo el producto: "))
cant = int (input("Dime la cantidad del producto: "))

subtotal = precio * cant 

if subtotal >= 500000:
    subdes = subtotal - (subtotal * 0.15)
    print( "El subtotal del " ,prod ,"es:", subtotal , "\n Tu descuento es del 15%""\n El total a pagar del  ", prod,"es:", subdes )
    
elif subtotal >= 200000:
    subdes = subtotal - (subtotal * 0.10)
    print( "El subtotal del " ,prod ,"es:", subtotal , "\n Tu descuento es del 10%""\n El total a pagar del  ", prod,"es:", subdes )
else: 
    print( "El subtotal del " ,prod ,"es:", subtotal , "\n Tu descuento es del 0%""\n El total a pagar del  ", prod,"es:", subtotal )
    