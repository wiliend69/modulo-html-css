# # cuenta regresiva
# num1 = int (input("dame un numero y vamos hacer una cuenta regresiva: "))
# while num1 :
#     print(num1)
#     num1 -= 1
#     if num1 == 0:
#         print("Despegue")

# n = int(input("Dame un numero rey:"))

# for i in range (1,n):
#     n += i
#     print(f"La suma es: {n}")

# num2 = int (input("Dame un numero y vamos a multiplicarlo: "))

# for i in range (1,10):
#     i += 0
#     print(f"{num2}X {i} = {num2*i}")


String = input("Dame una palabra y te dire cuantas vocales tienes: ")

vocal = ["a","A","e","E","i","I","o","O","u","U"]
i=0
for i in String:
    if i in vocal:
        i +=1
        print(f"vocales: {i} ")
