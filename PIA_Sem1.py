# PIA_IntroProgra
cont_clientes = 0
suma_paquetes = 0
cont_tematicas = 0
op1 = "si"
while op1 == "si":
    print("\n\nA continuación vas a crear un paquete para tu fiesta infantil")
    print("\n*El costo inicial es de $3,000")
    print("*Incluye renta del salón por 3 horas para 60 personas\n")

    # Costos de los servicios
    costo_inicial = 3_000
    pastel = 250
    pinata = 350
    refrescos = 650
    aguas_sabor = 250
    botanas = 300
    gelatinas = 100
    invitaciones = 250
    espectaculo = 700
    musica_amb = 200
    chilidog = 400
    hot_dog = 300
    pizza_espagueti = 600
    marinitas = 450
    chilidog_extra = 15
    hot_dog_extra = 10
    pizza_espagueti_extra = 50
    marinitas_extra = 12

    # Precios finales de cada servicio
    total_pastel = 0
    total_pinata = 0
    total_refrescos = 0
    total_aguas_sabor = 0
    total_botanas = 0
    total_gelatinas = 0
    total_invitaciones = 0
    total_espectaculo = 0
    total_musica_amb = 0
    total_chilidog = 0
    total_chilidog_extra = 0
    total_hot_dog = 0
    total_hot_dog_extra = 0
    total_pizza_espagueti = 0
    total_pizza_espagueti_extra = 0
    total_marinitas = 0
    total_marinitas_extra = 0

    # Impresiones finales
    pastel_precio_final = ""
    pinata_final_precio = ""
    refrescos_precio_final = ""
    aguas_sabor_precio_final = ""
    botanas_precio_final = ""
    gelatinas_precio_final = ""
    invitaciones_precio_final = ""
    espectaculo_precio_final = ""
    musica_amb_precio_final = ""
    chilidog_precio_final = ""
    chilidog_extra_precio_final = ""
    hot_dog_precio_final = ""
    hot_dog_extra_precio_final = ""
    pizza_espagueti_precio_final = ""
    pizza_espagueti_extra_precio_final = ""
    marinitas_precio_final = ""
    marinitas_extra_precio_final = ""

    # Ingresos a condicional de servicios extra
    i_chilidog = 0
    i_hot_dog = 0
    i_pizza_espagueti = 0
    i_marinitas = 0

    # Temática Si/No
    fiesta_tematica_SiNo = input("¿Tu fiesta será temática? \n\t Si/No\n").lower()
    if fiesta_tematica_SiNo == "si":
        pastel += pastel * 0.15
        pinata += pinata * 0.15
        invitaciones += invitaciones * 0.15
        espectaculo += espectaculo * 0.15
        musica_amb += musica_amb * 0.15
        cont_tematicas += 1

    # Personas extra Si/No
    def personas_extra_cant():
        personas_extra_SiNo = input(
            "\n¿Deseas agregar más personas al paquete?\n*Costo por persona extra: chilidog $15, hot dog $10, pizza espagueti $50, marinitas $12.\n\t Si/No\n"
        ).lower()
        if personas_extra_SiNo == "si":
            while True:
                personas_extra = int(
                    input(
                        "Ingresa la cantidad de personas extra.\n*Hasta 140 personas más\n"
                    )
                )
                if personas_extra > 0 and personas_extra < 141:
                    break
                print("\nCantidad invalida. ", end="")
        else:
            personas_extra = 0

        return personas_extra

    # Mandas a llamar función y guardas el valor en una variable global
    personas_extraNum = personas_extra_cant()

    if personas_extraNum == 0:
        i_chilidog = 1
        i_hot_dog = 1
        i_pizza_espagueti = 1
        i_marinitas = 1

    def servicios():
        print("\nA continuación se muestran los servicios y sus precios")
        print(
            f"""
Servicio            Precio
1. pastel            ${pastel}
2. pinata            ${pinata}
3. refrescos         $650
4. aguas de sabor    $250
5. botanas           $300
6. gelatinas         $100
7. invitaciones      ${invitaciones}
8. espectaculo       ${espectaculo}
9. musica ambiental  ${musica_amb}
10. chilidog         $400
11. hot dog          $300
12. pizza espagueti  $600
13. marinitas        $450\n """
        )

    servicios()

    costo_servicio = 0
    costo_servicio_extra = 0
    servicios_seleccionados = "\nServicios             Totales"

    servicio_SiNo = input("¿Desea agregar algún servicio?\n\t Si/No\n").lower()
    if servicio_SiNo == "no":
        servicios_seleccionados = "Ninguno"

    while servicio_SiNo == "si":
        servicio_i = int(input("\nIngrese el número del servicio \n"))
        if servicio_i == 1:
            total_pastel += pastel  # Total servicio de pastel
            costo_servicio += pastel  # Se añade al total del costo de servicios
            pastel_precio_final = f"\n1. pastel              ${total_pastel}"  # Actualiza el total del servicio
        elif servicio_i == 2:
            total_pinata += pinata
            costo_servicio += pinata
            pinata_final_precio = f"\n2. pinata              ${total_pinata}"
        elif servicio_i == 3:
            total_refrescos += refrescos
            costo_servicio += refrescos
            refrescos_precio_final = f"\n3. refrescos           ${total_refrescos}"
        elif servicio_i == 4:
            total_aguas_sabor += aguas_sabor
            costo_servicio += aguas_sabor
            aguas_sabor_precio_final = f"\n4. aguas de sabor      ${total_aguas_sabor}"
        elif servicio_i == 5:
            total_botanas += botanas
            costo_servicio += botanas
            botanas_precio_final = f"\n5. botanas             ${total_botanas}"
        elif servicio_i == 6:
            total_gelatinas += gelatinas
            costo_servicio += gelatinas
            gelatinas_precio_final = f"\n6. gelatinas           ${total_gelatinas}"
        elif servicio_i == 7:
            total_invitaciones += invitaciones
            costo_servicio += invitaciones
            invitaciones_precio_final = (
                f"\n7. invitaciones        ${total_invitaciones}"
            )
        elif servicio_i == 8:
            total_espectaculo += espectaculo
            costo_servicio += espectaculo
            espectaculo_precio_final = f"\n8. espectaculo         ${total_espectaculo}"
        elif servicio_i == 9:
            total_musica_amb += musica_amb
            costo_servicio += musica_amb
            musica_amb_precio_final = f"\n9. musica ambiental    ${total_musica_amb}"
        elif servicio_i == 10:
            total_chilidog += chilidog
            costo_servicio += chilidog
            chilidog_precio_final = f"\n10. chilidog           ${total_chilidog}"
            if i_chilidog < 1:
                total_chilidog_extra = chilidog_extra * personas_extraNum
                chilidog_extra_precio_final = (
                    f"\n*chilidog extra        ${total_chilidog_extra}"
                )
                costo_servicio_extra += total_chilidog_extra
                i_chilidog = 1
        elif servicio_i == 11:
            total_hot_dog += hot_dog
            costo_servicio += hot_dog
            hot_dog_precio_final = f"\n11. hot dog            ${total_hot_dog}"
            if i_hot_dog < 1:
                total_hot_dog_extra = hot_dog_extra * personas_extraNum
                hot_dog_extra_precio_final = (
                    f"\n*hot dog extra         ${total_hot_dog_extra}"
                )
                costo_servicio_extra += total_hot_dog_extra
                i_hot_dog = 1
        elif servicio_i == 12:
            total_pizza_espagueti += pizza_espagueti
            costo_servicio += pizza_espagueti
            pizza_espagueti_precio_final = (
                f"\n12. pizza espagueti    ${total_pizza_espagueti}"
            )
            if i_pizza_espagueti < 1:
                total_pizza_espagueti_extra = pizza_espagueti_extra * personas_extraNum
                pizza_espagueti_extra_precio_final = (
                    f"\n*pizza espagueti extra ${total_pizza_espagueti_extra}"
                )
                costo_servicio_extra += total_pizza_espagueti_extra
                i_pizza_espagueti = 1
        elif servicio_i == 13:
            total_marinitas += marinitas
            costo_servicio += marinitas
            marinitas_precio_final = f"\n13. marinitas          ${total_marinitas}"
            if i_marinitas < 1:
                total_marinitas_extra = marinitas_extra * personas_extraNum
                marinitas_extra_precio_final = (
                    f"\n*marinitas extra       ${total_marinitas_extra}"
                )
                costo_servicio_extra += total_marinitas_extra
                i_marinitas = 1
        else:
            print("\n*Servicio no válido.")

        servicio_SiNo = input("\n¿Desea agregar otro servicio? \n\t Si/No\n").lower()

    total = costo_inicial + costo_servicio + costo_servicio_extra
    cont_clientes += 1

    print(f"\n-------------- Paquete {cont_clientes} ----------------\n")
    print("Costo total del paquete:", total)
    print(
        "Servicios seleccionados:",
        servicios_seleccionados,
        pastel_precio_final,
        pinata_final_precio,
        refrescos_precio_final,
        aguas_sabor_precio_final,
        botanas_precio_final,
        gelatinas_precio_final,
        invitaciones_precio_final,
        espectaculo_precio_final,
        musica_amb_precio_final,
        chilidog_precio_final,
        chilidog_extra_precio_final,
        hot_dog_precio_final,
        hot_dog_extra_precio_final,
        pizza_espagueti_precio_final,
        pizza_espagueti_extra_precio_final,
        marinitas_precio_final,
        marinitas_extra_precio_final,
    )
    print("\n-----------------------------------------\n")

    suma_paquetes += total

    op1 = input("¿Deseas ingresar el paquete de otro cliente? \n\t Si/No\n").lower()

print("\n-------------- Reporte final ----------------\n")
print("El total de clientes atendidos durante el día:", cont_clientes)
print("El monto total obtenido por los paquetes vendidos del día es de:", suma_paquetes)
print(
    "El total de fiestas temáticas que fueron vendidos durante el día:", cont_tematicas
)
print("\n---------------------------------------------\n")
