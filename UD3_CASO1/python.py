def clasificar_estatura(altura):
    if altura < 150:
        return "Eres de estatura baja."
    elif altura >= 150 and altura < 170:
        return "Eres de estatura media."
    else:
        return "Eres de estatura alta."

altura = float(input("Ingresa tu altura en centímetros: "))
print(clasificar_estatura(altura))
