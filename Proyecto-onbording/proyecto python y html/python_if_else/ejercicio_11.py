temp = int (input("Dime que temperatura hay:" ))
if temp <10:
    print ("Esta haciendo frio")
elif temp == 10 and temp < 25:
    print ("Esta templadito el dia")
elif temp == 25 and temp < 35:
    print ("Esta caloroso el dia")
elif temp >= 35 :
    print("Esta muy caloroso afuera no salgas")