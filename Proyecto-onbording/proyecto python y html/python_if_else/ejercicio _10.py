user = input("Crea un usuario: ")
contra = input("Crea una contraseña: ")

print("Bienvenido: ")
userCon = input ("Ingresa tu usuario: ")
conCon = input("Ingresa tu contraseña: ")

if user == userCon and contra == conCon:
    print ("Acceso aceptado")
else:
    print("acceso denegado, no coincide el usuario o contraseña")