SubProceso personas_extra <- personas_extra_cant()
	// definir variables
		definir personas_extra_SiNo, personas_extra_SiNo_minus como texto;
		definir op Como Logico;
		Definir personas_extra como entero;
	
		Escribir "¿Deseas agregar más personas al paquete?";
		Escribir "*Costo por persona extra: chilidog $15, hot dog $10, pizza espagueti $50 y marinitas $12.";
		Escribir "         Si/No";
		Leer personas_extra_SiNo;
		personas_extra_SiNo_minus <- Minusculas(personas_extra_SiNo);
		Escribir "";
		
		Si personas_extra_SiNo_minus == "si" Entonces
			op <- Verdadero;
			Mientras op == Verdadero Hacer
				Escribir "Ingresa la cantidad de personas extra.";
				Escribir "*Hasta 140 personas más";
				Leer personas_extra;
				Si personas_extra > 0 y personas_extra < 141 Entonces
					op <- Falso;
				SiNo
					Escribir "";
					Escribir Sin Saltar "Cantidad inválida. ";
				FinSi
			FinMientras
		SiNo
			personas_extra <- 0;
		FinSi
	
FinSubProceso

SubProceso servicios(fiesta_tematica_SiNo_minus)
	// Definición y asignación de valores a variables para usarlas en subproceso
	Definir pastel, pinata, invitaciones, espectaculo, musica_amb, cont_tematicas como numero;
	Definir fiesta_tematica_SiNo como texto;
	
	pastel <- 250;
	pinata <- 350;
	invitaciones <- 250;
	espectaculo <- 700;
	musica_amb <- 200;
	
	// Temática Si/No
	Si fiesta_tematica_SiNo_minus == "si" Entonces
		pastel <- pastel + (pastel * 0.15);
		pinata <- pinata + (pinata * 0.15);
		invitaciones <- invitaciones + (invitaciones * 0.15);
		espectaculo <- espectaculo + (espectaculo * 0.15);
		musica_amb <- musica_amb + (musica_amb * 0.15);
	FinSi
	
	Escribir "";
	Escribir"A continuación se muestran los servicios y sus precios";
	Escribir "";
	Escribir "Servicio            Precio";
	Escribir "1. pastel            $", pastel;
	Escribir "2. pinata            $", pinata;
	Escribir "3. refrescos         $650";
	Escribir "4. aguas de sabor    $250";
	Escribir "5. botanas           $300";
	Escribir "6. gelatinas         $100";
	Escribir "7. invitaciones      $", invitaciones;
	Escribir "8. espectaculo       $", espectaculo;
	Escribir "9. musica ambiental  $", musica_amb;
	Escribir "10. chilidog         $400";
	Escribir "11. hot dog          $300";
	Escribir "12. pizza espagueti  $600";
	Escribir "13. marinitas        $450";
	Escribir "";
	
FinSubProceso

Proceso PIA_IntroProgra
	//CONTADORES
	Definir cont_clientes, cont_tematicas como Entero;
	// Costos de los servicios
	Definir costo_inicial como numero;
	Definir pastel, pinata, refrescos, aguas_sabor, botanas, gelatinas, invitaciones, espectaculo, musica_amb, chilidog como numero;
	Definir hot_dog, pizza_espagueti, marinitas, chilidog_extra, hot_dog_extra, pizza_espagueti_extra, marinitas_extra como numero;
	
	// Precios finales de cada servicio
    Definir total_pastel, total_pinata, total_refrescos, total_aguas_sabor, total_botanas, total_gelatinas, total_invitaciones, total_espectaculo como numero;
	Definir total_musica_amb, total_chilidog, total_chilidog_extra, total_hot_dog,total_hot_dog_extra, total_pizza_espagueti, total_pizza_espagueti_extra, total_marinitas, total_marinitas_extra como numero;
	
	// Conversión a texto de los totales
	Definir total_pastel_txt, total_pinata_txt, total_refrescos_txt, total_aguas_sabor_txt, total_botanas_txt, total_gelatinas_txt, total_invitaciones_txt como texto;
	Definir total_espectaculo_txt, total_musica_amb_txt, total_chilidog_txt, total_hot_dog_txt, total_pizza_espagueti_txt, total_marinitas_txt como texto;
	Definir total_chilidog_extra_txt, total_hot_dog_extra_txt, total_pizza_espagueti_extra_txt, total_marinitas_extra_txt como texto;
	// Impresiones finales
    Definir pastel_precio_final, pinata_precio_final, refrescos_precio_final, aguas_sabor_precio_final, botanas_precio_final, gelatinas_precio_final como texto;
	Definir invitaciones_precio_final, espectaculo_precio_final, musica_amb_precio_final, chilidog_precio_final, chilidog_extra_precio_final, hot_dog_precio_final como texto;
	Definir hot_dog_extra_precio_final, pizza_espagueti_precio_final, pizza_espagueti_extra_precio_final, marinitas_precio_final, marinitas_extra_precio_final como texto;
	
	// Ingresos a condicional de servicios extra
    Definir i_chilidog, i_hot_dog, i_pizza_espagueti, i_marinitas, cont_tematicas_global, servicio_i como entero;
	
	Definir op_paquete Como texto;
	
	Definir personas_extraNum como entero;
	
	definir costo_servicio, costo_servicio_extra como numero;
	definir servicios_seleccionados, servicio_SiNo como texto;
	
	Definir fiesta_tematica_SiNo como texto;
	Definir fiesta_tematica_SiNo_minus como texto;
	Definir servicio_SiNo_minus como texto;
	Definir op_paquete_minus como texto;
	
	Definir total, suma_paquetes como numero;
	
	Definir op1 como texto;

	
	cont_clientes <- 0;
	suma_paquetes <- 0;
	cont_tematicas <- 0;
	op_paquete_minus <- "si";
	
	Mientras op_paquete_minus == "si" Hacer
		cont_clientes <- cont_clientes + 1;
		Escribir "";
		Escribir "";
		Escribir ("A continuación vas a crear tu paquete para una fiesta infantil");
		Escribir "";
		Escribir ("*El costo inicial es de $3,000");
		Escribir ("*Incluye renta de salón por 3 horas para 60 personas");
		Escribir "";
		
		// Costos de los servicios
		costo_inicial <- 3000;
		pastel <- 250;
		pinata <- 350;
		refrescos <- 650;
		aguas_sabor <- 250;
		botanas <- 300;
		gelatinas <- 100;
		invitaciones <- 250;
		espectaculo <- 700;
		musica_amb <- 200;
		chilidog <- 400;
		hot_dog <- 300;
		pizza_espagueti <- 600;
		marinitas <- 450;
		chilidog_extra <- 15;
		hot_dog_extra <- 10;
		pizza_espagueti_extra <- 50;
		marinitas_extra <- 12;
		
		// Precios finales de cada servicio
		total_pastel <- 0;
		total_pinata <- 0;
		total_refrescos <- 0;
		total_aguas_sabor <- 0;
		total_botanas <- 0;
		total_gelatinas <- 0;
		total_invitaciones <- 0;
		total_espectaculo <- 0;
		total_musica_amb <- 0;
		total_chilidog <- 0;
		total_chilidog_extra <- 0;
		total_hot_dog <- 0;
		total_hot_dog_extra <- 0;
		total_pizza_espagueti <- 0;
		total_pizza_espagueti_extra <- 0;
		total_marinitas <- 0;
		total_marinitas_extra <- 0;
		
		// Impresiones finales
		pastel_precio_final <- "";
		pinata_precio_final <- "";
		refrescos_precio_final <- "";
		aguas_sabor_precio_final <- "";
		botanas_precio_final <- "";
		gelatinas_precio_final <- "";
		invitaciones_precio_final <- "";
		espectaculo_precio_final <- "";
		musica_amb_precio_final <- "";
		chilidog_precio_final <- "";
		chilidog_extra_precio_final <- "";
		hot_dog_precio_final <- "";
		hot_dog_extra_precio_final <- "";
		pizza_espagueti_precio_final <- "";
		pizza_espagueti_extra_precio_final <- "";
		marinitas_precio_final <- "";
		marinitas_extra_precio_final <- "";
		
		// Ingresos a condicional de servicios extra
		i_chilidog <- 0;
		i_hot_dog <- 0;
		i_pizza_espagueti <- 0;
		i_marinitas <- 0;
		
		// Temática Si/No
		Escribir"¿Tu fiesta será temática?";
		Escribir "         Si/No";
		Leer fiesta_tematica_SiNo;
		fiesta_tematica_SiNo_minus <- MINUSCULAS(fiesta_tematica_SiNo);
		Escribir "";
		
		Si fiesta_tematica_SiNo_minus = "si" Entonces
			pastel <- pastel + (pastel * 0.15);
			pinata <- pinata + (pinata * 0.15);
			invitaciones <- invitaciones + (invitaciones * 0.15);
			espectaculo <- espectaculo + (espectaculo * 0.15);
			musica_amb <- musica_amb + (musica_amb * 0.15);
			cont_tematicas <- cont_tematicas + 1;
		FinSi
		
		// Mandas a llamar función y guardas el valor en una variable global
		personas_extraNum <- personas_extra_cant();  

		Si personas_extraNum == 0 Entonces
			i_chilidog <- 1;
			i_hot_dog <- 1;
			i_pizza_espagueti <- 1;
			i_marinitas <- 1;
		FinSi
		
		servicios(fiesta_tematica_SiNo_minus);

		costo_servicio <- 0;
		costo_servicio_extra <- 0;
		servicios_seleccionados <- "Servicios             Totales";
		Escribir "¿Desea agregar algún servicio?";
		Escribir "         Si/No";
		Leer servicio_SiNo;
		servicio_SiNo_minus <- MINUSCULAS(servicio_SiNo);
		Escribir "";
		
		Si servicio_SiNo_minus == "no" Entonces
			servicios_seleccionados <- "Ninguno";
		FinSi
		
		Mientras servicio_SiNo_minus == "si" Hacer
			Escribir "Ingrese el número del servicio";
			Leer servicio_i;
			Escribir "";
			
			Segun servicio_i Hacer
				1:
					total_pastel <- total_pastel + pastel;
					total_pastel_txt <- ConvertirATexto(total_pastel);
					costo_servicio <- costo_servicio + pastel;
					pastel_precio_final <- Concatenar("1. pastel              $", total_pastel_txt);
				2:
					total_pinata <- total_pinata + pinata;
					total_pinata_txt <- ConvertirATexto(total_pinata);
					costo_servicio <- costo_servicio + pinata;
					pinata_precio_final <- Concatenar("2. pinata              $", total_pinata_txt);
				3:
					total_refrescos <- total_refrescos + refrescos;
					total_refrescos_txt <- ConvertirATexto(total_refrescos);
					costo_servicio <- costo_servicio + refrescos;
					refrescos_precio_final <- Concatenar("3. refrescos           $", total_refrescos_txt);
				4:
					total_aguas_sabor <- total_aguas_sabor + aguas_sabor;
					total_aguas_sabor_txt <- ConvertirATexto(total_aguas_sabor);
					costo_servicio <- costo_servicio + aguas_sabor;
					aguas_sabor_precio_final <- Concatenar("4. aguas de sabor      $", total_aguas_sabor_txt);
				5:
					total_botanas <- total_botanas + botanas;
					total_botanas_txt <- ConvertirATexto(total_botanas);
					costo_servicio <- costo_servicio + botanas;
					botanas_precio_final <- Concatenar("5. botanas             $", total_botanas_txt);
				6:
					total_gelatinas <- total_gelatinas + gelatinas;
					total_gelatinas_txt <- ConvertirATexto(total_gelatinas);
					costo_servicio <- costo_servicio + gelatinas;
					gelatinas_precio_final <- Concatenar("6. gelatinas           $", total_gelatinas_txt);
				7:
					total_invitaciones <- total_invitaciones + invitaciones;
					total_invitaciones_txt <- ConvertirATexto(total_invitaciones);
					costo_servicio <- costo_servicio + invitaciones;
					invitaciones_precio_final <- Concatenar("7. invitaciones        $", total_invitaciones_txt);
				8:
					total_espectaculo <- total_espectaculo + espectaculo;
					total_espectaculo_txt <- ConvertirATexto(total_espectaculo);
					costo_servicio <- costo_servicio + espectaculo;
					espectaculo_precio_final <- Concatenar("8. espectaculo         $", total_espectaculo_txt);
				9:
					total_musica_amb <- total_musica_amb + musica_amb;
					total_musica_amb_txt <- ConvertirATexto(total_musica_amb);
					costo_servicio <- costo_servicio + musica_amb;
					musica_amb_precio_final <- Concatenar("9. musica ambiental    $", total_musica_amb_txt);
				10:
					total_chilidog <- total_chilidog + chilidog;
					total_chilidog_txt <- ConvertirATexto(total_chilidog);
					costo_servicio <- costo_servicio + chilidog;
					chilidog_precio_final <- Concatenar("10. chilidog           $", total_chilidog_txt);
					Si i_chilidog < 1 Entonces
						total_chilidog_extra <- chilidog_extra * personas_extraNum;
						total_chilidog_extra_txt <- ConvertirATexto(total_chilidog_extra);
						chilidog_extra_precio_final <- Concatenar("*chilidog extra        $", total_chilidog_extra_txt);
						costo_servicio_extra <- costo_servicio_extra + total_chilidog_extra;
						i_chilidog <- 1;
					FinSi
				11:
					total_hot_dog <- total_hot_dog + hot_dog;
					total_hot_dog_txt <- ConvertirATexto(total_hot_dog);
					costo_servicio <- costo_servicio + hot_dog;
					hot_dog_precio_final <- Concatenar("11. hot dog            $", total_hot_dog_txt);
					Si i_hot_dog < 1 Entonces
						total_hot_dog_extra <- hot_dog_extra * personas_extraNum;
						total_hot_dog_extra_txt <- ConvertirATexto(total_hot_dog_extra);
						hot_dog_extra_precio_final <- Concatenar("*hot dog extra         $", total_hot_dog_extra_txt);
						costo_servicio_extra <- costo_servicio_extra + total_hot_dog_extra;
						i_hot_dog <- 1;
					FinSi
				12:
					total_pizza_espagueti <- total_pizza_espagueti + pizza_espagueti;
					total_pizza_espagueti_txt <- ConvertirATexto(total_pizza_espagueti);
					costo_servicio <- costo_servicio + pizza_espagueti;
					pizza_espagueti_precio_final <- Concatenar("12. pizza espagueti    $", total_pizza_espagueti_txt);
					Si i_pizza_espagueti < 1 Entonces
						total_pizza_espagueti_extra <- pizza_espagueti_extra * personas_extraNum;
						total_pizza_espagueti_extra_txt <- ConvertirATexto(total_pizza_espagueti_extra);
						pizza_espagueti_extra_precio_final <- Concatenar("*pizza espagueti extra $", total_pizza_espagueti_extra_txt);
						costo_servicio_extra <- costo_servicio_extra + total_pizza_espagueti_extra;
						i_pizza_espagueti <- 1;
					FinSi
				13:
					total_marinitas <- total_marinitas + marinitas;
					total_marinitas_txt <- ConvertirATexto(total_marinitas);
					costo_servicio <- costo_servicio + marinitas;
					marinitas_precio_final <- Concatenar("13. marinitas          $", total_marinitas_txt);
					Si i_marinitas < 1 Entonces
						total_marinitas_extra <- marinitas_extra * personas_extraNum;
						total_marinitas_extra_txt <- ConvertirATexto(total_marinitas_extra);
						marinitas_extra_precio_final <- Concatenar("*marinitas extra       $", total_marinitas_extra_txt);
						costo_servicio_extra <- costo_servicio_extra + total_marinitas_extra;
						i_marinitas <- 1;
					FinSi
				De Otro Modo:
					Escribir "*Servicio no válido.";
					Escribir "";
			FinSegun
			
			Escribir "¿Desea agregar otro servicio?";
			Leer servicio_SiNo;
			servicio_SiNo_minus <- MINUSCULAS(servicio_SiNo);
			Escribir "";
			
		FinMientras
		

		total <- costo_inicial + costo_servicio + costo_servicio_extra;
		
		Escribir "-------------- Paquete ", cont_clientes," ----------------";
		Escribir "";
		
		Escribir "Costo total del paquete: ", total;
		
		Si servicios_seleccionados <> "Ninguno" Entonces
			Escribir "Servicios seleccionados: ";
			Escribir servicios_seleccionados;
		SiNo
			Escribir Sin Saltar "Servicios seleccionados: ";
			Escribir servicios_seleccionados;
		FinSi
		Si pastel_precio_final <> "" Entonces
			Escribir pastel_precio_final;
		FinSi
		Si pinata_precio_final <> "" Entonces
			Escribir pinata_precio_final;
		FinSi
		Si refrescos_precio_final <> "" Entonces
			Escribir refrescos_precio_final;
		FinSi
		Si aguas_sabor_precio_final <> "" Entonces
			Escribir aguas_sabor_precio_final;
		FinSi
		Si botanas_precio_final <> "" Entonces
			Escribir botanas_precio_final;
		FinSi
		Si gelatinas_precio_final <> "" Entonces
			Escribir gelatinas_precio_final;
		FinSi
		Si invitaciones_precio_final <> "" Entonces
			Escribir invitaciones_precio_final;
		FinSi
		Si espectaculo_precio_final <> "" Entonces
			Escribir espectaculo_precio_final;
		FinSi
		Si musica_amb_precio_final <> "" Entonces
			Escribir musica_amb_precio_final;
		FinSi
		Si chilidog_precio_final <> "" Entonces
			Escribir chilidog_precio_final;
		FinSi
		Si chilidog_extra_precio_final <> "" Entonces
			Escribir chilidog_extra_precio_final;
		FinSi
		Si hot_dog_precio_final <> "" Entonces
			Escribir hot_dog_precio_final;
		FinSi
		Si hot_dog_extra_precio_final <> "" Entonces
			Escribir hot_dog_extra_precio_final;
		FinSi
		Si pizza_espagueti_precio_final <> "" Entonces
			Escribir pizza_espagueti_precio_final;
		FinSi
		Si pizza_espagueti_extra_precio_final <> "" Entonces
			Escribir pizza_espagueti_extra_precio_final;
		FinSi
		Si marinitas_precio_final <> "" Entonces
			Escribir marinitas_precio_final;
		FinSi
		Si marinitas_extra_precio_final <> "" Entonces
			Escribir marinitas_extra_precio_final;
		FinSi
		Escribir "";
		Escribir "-----------------------------------------";
		
		suma_paquetes <- suma_paquetes + total;
		
		Escribir "¿Deseas ingresar el paquete de otro cliente?";
		Escribir "         Si/No";
		Leer op_paquete;
		op_paquete_minus <- Minusculas(op_paquete);
		
	FinMientras
	
	Escribir "-------------- Reporte final ----------------";
	Escribir "El total de clientes atendidos durante el día: ", cont_clientes;
	Escribir "El monto total obtenido por los paquetes vendidos del día es de: ", suma_paquetes;
	Escribir "El total de fiestas temáticas que fueron vendidos durante el día: ", cont_tematicas;
	Escribir "---------------------------------------------";
	
	
FinProceso

