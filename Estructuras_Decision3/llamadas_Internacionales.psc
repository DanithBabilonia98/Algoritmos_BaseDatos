Algoritmo llamadas_Internacionales 
	Definir cantidad_llamadas_realizadas, zona_llamada, cantidad_minutos_hablados Como Real
	Definir opc Como Caracter
	
	america_norte <- 200
	america_central <- 220
	america_sur <- 450
	europa <- 350
	asia <- 600
	africa <- 600
	oceania <- 500
	
	contador_AmericaNorte <- 0
	contado_AmericaCentral <- 0
	contador_AmericaSur <- 0
	contador_Europa <- 0
	contador_Asia <- 0
	contador_Africa <- 0
	contador_Oceania <- 0	
	
	bandera <- Verdadero
	
	Mientras bandera Hacer
		Escribir "Nuevo cliente ? si -- no"
		Leer opc
		si opc = "si" o opc = "SI" o opc = "Si" o opc = "sI" Entonces
			x <- 1
			Para j <- 1 Hasta x  Con Paso 1 Hacer
				Escribir j, ":	Digite la cantidad de llamadas que hizo: "
				Leer  cantidad_llamadas_realizadas
				
				Para k <- 1 Hasta cantidad_llamadas_realizadas Con Paso 1 Hacer
					Escribir k, ":	Zona de la llamada realizada : 1. América Central 2. América Central 3. América del Sur 4. Europa 5. Asia 6. África 7.Oceanía "
					Leer zona_llamada
					Segun zona_llamada Hacer
						1:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							valor_zona_AN <- cantidad_minutos_hablados * america_norte
							total_minutos_AmericaNorte <- total_minutos_AmericaNorte + cantidad_minutos_hablados
							total_ventas_AmericaNorte <- total_ventas_AmericaNorte + valor_zona_AN 
							contador_AmericaNorte <- contador_AmericaNorte + 1
						2:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							valor_zona_AC  <- cantidad_minutos_hablados * america_central
							total_minutos_AmericaCentral <- total_minutos_AmericaCentral + cantidad_minutos_hablados
							total_ventas_AmericaCentral <- total_ventas_AmericaCentral + valor_zona_AC
							contado_AmericaCentral <- contado_AmericaCentral + 1 
						3:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							valor_zona_AS <- cantidad_minutos_hablados * america_sur
							total_minutos_AmericaSur <- total_minutos_AmericaSur + cantidad_minutos_hablados
							total_ventas_AmericaSur <- total_ventas_AmericaSur + valor_zona_AS
							contador_AmericaSur <- contador_AmericaSur + 1
						4:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							valor_zona_EU <- cantidad_minutos_hablados * europa
							total_minutos_Europa <- total_minutos_Europa + cantidad_minutos_hablados
							total_ventas_Europa <- total_ventas_Europa + valor_zona_EU
							contador_Europa<- contador_Europa + 1 
						5:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							valor_zona_AS <- cantidad_minutos_hablados * asia
							total_minutos_Asia <- total_minutos_Asia + cantidad_minutos_hablados
							total_ventas_Asia <- total_ventas_Asia + valor_zona_AS
							contador_Asia <- contador_Asia + 1
						6:
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							valor_zona_AF <- cantidad_minutos_hablados * africa
							total_minutos_Africa <- total_minutos_Africa + cantidad_llamadas_realizadas
							total_ventas_Africa <- total_ventas_Africa + valor_zona_AF
							contador_Africa <- contador_Africa +1 
						7: 
							Escribir  "Cantidad minutos hablados : "
							Leer cantidad_minutos_hablados
							
							valor_zona_OC <- cantidad_minutos_hablados * oceania
							total_minutos_Oceania <- total_minutos_Oceania + cantidad_minutos_hablados
							total_ventas_oceania <- total_ventas_oceania + valor_zona_OC
							contador_Oceania <- contador_Oceania + 1 
							
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
