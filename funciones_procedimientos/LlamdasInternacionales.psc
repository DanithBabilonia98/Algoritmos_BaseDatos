Funcion total_ventas_AmericaNorte <- AmericaNorte(cantidad_minutos_hablados)
	
	valor_zona_AN <- cantidad_minutos_hablados * 200
	total_ventas_AmericaNorte <- total_ventas_AmericaNorte + valor_zona_AN 
	
Fin Funcion
//Total mintos hblados a America del norte
Funcion total_minutos_AmericaNorte <- AmericaNorteMinutos(cantidad_minutos_hablados)
	valor_zona_AN <- cantidad_minutos_hablados * 200
	total_minutos_AmericaNorte <- total_minutos_AmericaNorte + cantidad_minutos_hablados
FinFuncion

Funcion contador_AmericaNorte <- AmericaNorteContador()
	contador_AmericaNorte <- contador_AmericaNorte + 1
FinFuncion

//total ventas America CEntral 
Funcion total_ventas_AmericaCentral<- AmericaCentral(cantidad_minutos_hablados)	
	valor_zona_AC  <- cantidad_minutos_hablados * 220
	total_ventas_AmericaCentral <- total_ventas_AmericaCentral + valor_zona_AC
Fin Funcion

//total minutos hblados a A.Central 
Funcion total_minutos_AmericaCentral <- AmericaCentralMinutos (cantidad_minutos_hablados)
	valor_zona_AC  <- cantidad_minutos_hablados * 220
	total_minutos_AmericaCentral <- total_minutos_AmericaCentral + cantidad_minutos_hablados
FinFuncion

 //Contar los clientes que llamaron a la Zona America Central 
Funcion contador_AmericaCentral <- AmericaCentralContador()
	contador_AmericaCentral <- contado_AmericaCentral + 1 
FinFuncion

//total de ventas de América del Sur 
Funcion total_ventas_AmericaSur<- AmericaSur(cantidad_minutos_hablados)
	Escribir  "Cantidad minutos hablados : "
	Leer cantidad_minutos_hablados
	
	valor_zona_AS <- cantidad_minutos_hablados * 450
	total_ventas_AmericaSur <- total_ventas_AmericaSur + valor_zona_AS
Fin Funcion

//Total minutos hablados a América del Sur
Funcion total_minutos_AmericaSur <- AmericaSurMinutos(cantidad_minutos_hablados)
	total_minutos_AmericaSur <- total_minutos_AmericaSur + cantidad_minutos_hablados
FinFuncion

//Contar la cantidad de clientes que llamaron a A. del Sur
Funcion contador_AmericaSur <-AmericaSurContador()
	contador_AmericaSur <- contador_AmericaSur + 1
FinFuncion

// Total ventas Africa
Funcion total_ventas_Africa <- Africa(cantidad_minutos_hablados )
	Escribir  "Cantidad minutos hablados : "
	Leer cantidad_minutos_hablados
	
	valor_zona_AF <- cantidad_minutos_hablados * 600
	total_ventas_Africa <- total_ventas_Africa + valor_zona_AF
Fin Funcion

//Total minutos hablados a -africa
Funcion total_minutos_Africa <- AfricaMinutos(cantidad_minutos_hablados)
	valor_zona_AF <- cantidad_minutos_hablados * 600
	total_minutos_Africa <- total_minutos_Africa + cantidad_minutos_hablados
FinFuncion

//Contar la cantidad de cleintes que llamaron a Africa
Funcion contador_Africa <-AfricaContador()
	contador_Africa <- contador_Africa +1 
FinFuncion

Funcion total_ventas_Europa <- Europa ( cantidad_minutos_hablados)
	Escribir  "Cantidad minutos hablados : "
	Leer cantidad_minutos_hablados
	
	valor_zona_EU <- cantidad_minutos_hablados * 350
	total_ventas_Europa <- total_ventas_Europa + valor_zona_EU
Fin Funcion
//Cantidad de minutos llamados a Europa
Funcion total_minutos_Europa <- EuropaMinutos(cantidad_minutos_hablados)
	total_minutos_Europa <- total_minutos_Europa + cantidad_minutos_hablados
FinFuncion
//Contador de clientes que llamaron hacia Europa
Funcion contador_Europa <-EuropaContador()
	contador_Europa <- contador_Europa +1 
FinFuncion
//Total ventas Asia
Funcion total_ventas_Asia <- Asia( cantidad_minutos_hablados)
	Escribir  "Cantidad minutos hablados : "
	Leer cantidad_minutos_hablados
	
	valor_zona_AS <- cantidad_minutos_hablados * 600
	total_ventas_Asia <- total_ventas_Asia + valor_zona_AS
Fin Funcion
//Ccantidad de cleientes que llamarona a Asia
Funcion total_minutos_Asia <- AsiaMinutos(cantidad_minutos_hablados)
	total_minutos_Asia <- total_minutos_Asia + cantidad_minutos_hablados
FinFuncion

//Contador de clientes que llamaron a OCeania
Funcion contador_Asia <-AsiaContador()
	contador_Asia <- contador_Asia +1 
FinFuncion

//Total ventas Oceania
Funcion total_ventas_oceania <- Oceania(cantidad_minutos_hablados )
	Escribir  "Cantidad minutos hablados : "
	Leer cantidad_minutos_hablados
	
	valor_zona_OC <- cantidad_minutos_hablados * 500
	total_ventas_oceania <- total_ventas_oceania + valor_zona_OC
Fin Funcion
//Total minutos hablados a Oceania 
Funcion total_minutos_Oceania <- OceaniaMinutos(cantidad_minutos_hablados)
	total_minutos_Oceania <- total_minutos_Oceania + cantidad_minutos_hablados
FinFuncion
//cleintes que llamaron a OCeania
Funcion contador_Oceania <-OceaniaContador()
	contador_Oceania <- contador_Oceania +1 
FinFuncion
funcion cantidad_minutos_llamados <- RecibirCantidad()
	
FinFuncion
Funcion Menu()
	Escribir "	Zona de la llamada realizada "
	Escribir "1. América del Norte "
	Escribir "2. América Central "
	Escribir "3. América del Sur "
	Escribir "4. Europa "
	Escribir "5. Asia "
	Escribir "6. África "
	Escribir "7.Oceanía "
FinFuncion

Algoritmo LlamadasInternacionales
	bandera <- Verdadero
	contador_AmericaNorte <- 0
	contado_AmericaCentral <- 0
	contador_AmericaSur <- 0
	contador_Europa <- 0
	contador_Asia <- 0
	contador_Africa <- 0
	contador_Oceania <- 0
	Mientras bandera Hacer
		Escribir "Nuevo cliente ? si -- no"
		Leer opc
		si opc = "si" o opc = "SI" o opc = "Si" o opc = "sI" Entonces
			x <- 1
			Para j <- 1 Hasta x  Con Paso 1 Hacer
				Escribir j, ":	Digite la cantidad de llamadas que hizo: "
				Leer  cantidad_llamadas_realizadas
				
				Para k <- 1 Hasta cantidad_llamadas_realizadas Con Paso 1 Hacer
					Menu()
					Leer zona_llamada
					Segun zona_llamada Hacer
						1:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							total_ventas_AmericaNorte <-  AmericaNorte(cantidad_minutos_hablados)
							total_minutos_AmericaNorte <- AmericaNorteMinutos(cantidad_minutos_hablados)
							contador_AmericaNorte <- AmericaNorteContador()
							
						2:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							total_ventas_AmericaCentral <- AmericaCentral(cantidad_minutos_hablados)
							total_minutos_AmericaCentral <- AmericaCentralMinutos (cantidad_minutos_hablados)
							contador_AmericaCentral <- AmericaCentralContador()
							
							
						3:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							total_ventas_AmericaSur <- AmericaSur(cantidad_minutos_hablados)
							total_minutos_AmericaSur <- AmericaSurMinutos(cantidad_minutos_hablados)
							contador_AmericaSur <-AmericaSurContador()
							
						4:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							total_ventas_Europa <- Europa ( cantidad_minutos_hablados)
							total_minutos_Europa <- EuropaMinutos(cantidad_minutos_hablados)
							contador_Europa <- EuropaContador()
							
						5:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							total_ventas_Asia <- Asia(cantidad_minutos_hablados )
							total_minutos_Asia <- AsiaMinutos(cantidad_minutos_hablados)
							contador_Asia <-AsiaContador()
							
						6:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							total_ventas_Africa <- Africa( cantidad_minutos_hablados)
							total_minutos_Africa <- AfricaMinutos(cantidad_minutos_hablados)
							contador_Africa <-AfricaContador()
							
						7: 
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							total_ventas_oceania <- Oceania( cantidad_minutos_hablados)
							total_minutos_Oceania <- OCeaniaMinutos(cantidad_minutos_hablados)
							contador_Oceania <- OCeaniaContador()
							
						De Otro Modo:
							Escribir "Esta zona no se encuentra o no existe"
					Fin Segun
					
				FinPara
			FinPara
			x <- x + 1
		SiNo
			Escribir "Programa terminado"
			bandera <- Falso
		FinSi
		
		
	FinMientras
	
	Escribir  "-------------------------------------------------"
	Escribir  "		Resultado de Operaciones del Día"
	Escribir  "-------------------------------------------------"
	Escribir  "Ventas por Zona , cantidad de minutos y total clientes  "
	Escribir  "América del Norte : ", total_ventas_AmericaNorte, " 	Total_Minutos : ", total_minutos_AmericaNorte , "--- Total Clientes : ", contador_AmericaNorte
	Escribir  "América Central: ", total_ventas_AmericaCentral, " 	Total_Minutos : ", total_minutos_AmericaCentral , "--- Total Clientes : ", contado_AmericaCentral
	Escribir  "América del Sur : ", total_ventas_AmericaSur,	 " 	Total_Minutos : ", total_minutos_AmericaSur , "--- Total Clientes : ", contador_AmericaSur
	Escribir  "Europa : ", total_ventas_Europa, " 	Total_Minutos : ", total_minutos_Europa , "--- Total Clientes : ", contador_Europa
	Escribir  "Asia : ", total_ventas_Asia, " 	Total_Minutos : ", total_minutos_Asia , "--- Total Clientes : ", contador_Asia
	Escribir  "África : ", total_ventas_Africa, " 	Total_Minutos : ", total_minutos_Africa , "--- Total Clientes : ", contador_Africa
	Escribir  "Oceanía : ", total_ventas_oceania, " 	Total_Minutos : ", total_minutos_Oceania , "--- Total Clientes : ", contador_Oceania
FinAlgoritmo
