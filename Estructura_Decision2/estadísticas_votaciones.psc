Algoritmo estadísticas_votaciones
	definir ciudad, sexo , voto Como Caracter
	Definir edad, cantidad_votos, femenino_1, masculino_1 Como Real
	
	femenino_1 <- 0
	femenino_2 <- 0
	femenino_3 <- 0
	masculino_1 <-0
	masculino_2 <-0
	masculino_3 <-0
	
	bogota1 <- 0
	bogota2 <- 0
	bogota3 <- 0
	
	barranquilla1 <- 0
	barranquilla2 <- 0
	barranquilla3 <- 0
	
	cali1 <-0
	cali2 <- 0
	cali3 <- 0
	
	cartagena_1 <- 0
	cartagena2 <-0
	cartagena3 <-0
	
	medellin1 <- 0
	medllin2<-0
	medellin3 <-0
	
	edad_rango1_p <-0
	edad_rango2_p <-0
	edad_rango3_p <-0
	edad_rango4_p <-0
	
	edad_rango1_r <-0
	edad_rango2_r <-0
	edad_rango3_r <-0
	edad_rango4_r <-0
	
	edad_rango1_b <-0
	edad_rango2_b <-0
	edad_rango3_b <-0
	edad_rango4_b <-0
	
	Escribir "cantidad de votantes :" 
	Leer  cantidad_votos
	
	Para x<-1 Hasta cantidad_votos Con Paso 1 Hacer
		Escribir "Sexo 1) Femenino 2) Masculino"
		Leer sexo
		
		Escribir  "Edad : "
		Leer  edad
		
		Escribir "Ciudad : 1) Bogotá 2) Barranquilla, 3) Cali 4) Cartagena 5) Medellín "
		Leer ciudad
		
		Escribir "Vota por 1) Petro 2) Hernández 3) En blanco "
		Leer voto 
		
		si voto = "1" Entonces
			si sexo = "1" Entonces
				femenino_1 <- femenino_1 +1
			SiNo
				masculino_1 <- masculino_1 + 1
				
			FinSi
			
			si edad >= 18 y edad <= 15 Entonces
				edad_rango1_p <- edad_rango1_p + 1 
			sino 
				si edad >= 26 y edad <= 40 Entonces
					edad_rango2_p <- edad_rango2_p +1
				SiNo
					si edad >= 41 y edad <= 60 Entonces
						edad_rango3_p <- edad_rango3_p + 1
					sino 
						edad_rango4_p <- edad_rango4_p + 1
					FinSi
				FinSi
			FinSi
			
			si ciudad = "1" Entonces
				bogota1 <- bogota1 +1 
			SiNo
				si ciudad = "2" Entonces
					barranquilla1 <- barranquilla1 + 1
				SiNo
					si ciudad = "3" Entonces
						cali1 <- cali1 + 1
					SiNo
						si ciudad ="4" Entonces
							cartagena_1 <- cartagena_1 + 1
						SiNo
							medellin1 <- medellin1 + 1 
						FinSi
					FinSi
				FinSi
			FinSi
		SiNo
			si voto = "2" Entonces
				si sexo = "1" Entonces
					femenino_2 <- femenino_2 +1
				SiNo
					masculino_2 <- masculino_2 + 1
					
				FinSi
				
				si edad >= 18 y edad <= 15 Entonces
					edad_rango1_r <- edad_rango1_r + 1 
				sino 
					si edad >= 26 y edad <= 40 Entonces
						edad_rango2_r <- edad_rango2_r +1
					SiNo
						si edad >= 41 y edad <= 60 Entonces
							edad_rango3_r <- edad_rango3_r + 1
						sino 
							edad_rango4_r <- edad_rango4_r + 1
						FinSi
					FinSi
				FinSi
				
				si ciudad = "1" Entonces
					bogota2 <- bogota2 +1 
				SiNo
					si ciudad = "2" Entonces
						barranquilla2 <- barranquilla2 + 1
					SiNo
						si ciudad = "3" Entonces
							cali2 <- cali2 + 1
						SiNo
							si ciudad ="4" Entonces
								cartagena2 <- cartagena2 + 1
							SiNo
								medellin2 <- medellin2 + 1 
							FinSi
						FinSi
					FinSi
				FinSi
			SiNo
						
				si voto = "3" Entonces
					si sexo = "1" Entonces
						femenino_3 <- femenino_3 +1
					SiNo
						masculino_3 <- masculino_3 + 1
						
					FinSi
					
					si edad >= 18 y edad <= 15 Entonces
						edad_rango1_b <- edad_rango1_b + 1 
					sino 
						si edad >= 26 y edad <= 40 Entonces
							edad_rango2_b <- edad_rango2_b +1
						SiNo
							si edad >= 41 y edad <= 60 Entonces
								edad_rango3_b <- edad_rango3_b + 1
							sino 
								edad_rango4_b <- edad_rango4_b + 1
							FinSi
						FinSi
					FinSi
					
					si ciudad = "1" Entonces
						bogota3 <- bogota3 +1 
					SiNo
						si ciudad = "2" Entonces
							barranquilla3 <- barranquilla3 + 1
						SiNo
							si ciudad = "3" Entonces
								cali3 <- cali3 + 1
							SiNo
								si ciudad ="4" Entonces
									cartagena3 <- cartagena3 + 1
								SiNo
									medellin3 <- medellin3 + 1 
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
		FinSi
		
	FinPara
	totalfemenino <- femenino_1+ femenino_2 + femenino_3
	totalmasculino <- masculino_1+ masculino_2 + masculino_3 
	totalBogota <- bogota1+ bogota2 + bogota3
	totalQuilla <- barranquilla1 + barranquilla2 + barranquilla3
	totalcali <- cali1 + cali2 + cali3
	totalCartagena <- cartagena_1 + cartagena2 + cartagena3
	totalmedellin <- medellin1 + medellin2 + medellin3
	totalEdad1 <- edad_rango1_p + edad_rango1_b + edad_rango1_r
	totalEdad2 <- edad_rango2_b + edad_rango2_p + edad_rango2_r
	totalEdad3 <- edad_rango3_b + edad_rango3_p + edad_rango3_r
	totalEdad4 <- edad_rango4_b+ edad_rango4_p + edad_rango4_r
	
	
	Escribir "-------------------Gustavo Petro--------------------------"
	Escribir " Sexo:"
	Escribir " Femenino : ", (femenino_1 * 100)/totalfemenino ,"%"
	Escribir " Masculino : ", (masculino_1 * 100)/ totalmasculino, "%"
	Escribir " Edad (rangos) :"
	Escribir  "18 - 15 años :", (edad_rango1_p * 100)/ totalEdad1 ,"%"
	Escribir " 26 - 40 años :", (edad_rango2_p * 100) / totalEdad2 ,"%"
	Escribir " 41 - 60 años :", (edad_rango3_p * 100) /totalEdad3 ,"%"
	Escribir "  Más de 60 años ", (edad_rango4_p * 100) / totalEdad4 ,"%"
	Escribir "Ciudades : "
	Escribir "Barranquilla : " , (barranquilla1 * 100)/totalQuilla,"%"
	Escribir "Bogotá : ", (bogota1 * 100)/totalBogota ,"%"
	Escribir  "Cali : ", (cali1 * 100)/totalcali ,"%"
	Escribir  "Cartagena ", (cartagena_1 * 100)/totalCartagena ,"%"
	Escribir "Medellín : ", (medellin1)/totalmedellin,"%"
	escribir "---------------------------------------------------------"
	Escribir  ""
	Escribir "-------------------Rodolfo Hernández--------------------------"
	Escribir " Sexo:"
	Escribir " Femenino : ", (femenino_2 * 100)/totalfemenino ,"%"
	Escribir " Masculino : ", (masculino_2 * 100)/ totalmasculino, "%"
	Escribir " Edad (rangos) :"
	Escribir  "18 - 15 años :", (edad_rango1_r * 100)/ totalEdad1 ,"%"
	Escribir " 26 - 40 años :", (edad_rango2_r * 100) / totalEdad2 ,"%"
	Escribir " 41 - 60 años :", (edad_rango3_r * 100) /totalEdad3 ,"%"
	Escribir "  Más de 60 años ", (edad_rango4_r * 100) / totalEdad4 ,"%"
	Escribir "Ciudades : "
	Escribir "Barranquilla : " , (barranquilla2 * 100)/totalQuilla,"%"
	Escribir "Bogotá : ", (bogota2 * 100)/totalBogota ,"%"
	Escribir  "Cali : ", (cali2 * 100)/totalcali ,"%"
	Escribir  "Cartagena ", (cartagena2 * 100)/totalCartagena ,"%"
	Escribir "Medellín : ", (medellin2)/totalmedellin,"%"
	escribir "---------------------------------------------------------"
	Escribir "-------------------Voto en Blanco--------------------------"
	Escribir " Sexo:"
	Escribir " Femenino : ", (femenino_3 * 100)/totalfemenino ,"%"
	Escribir " Masculino : ", (masculino_3 * 100)/ totalmasculino, "%"
	Escribir " Edad (rangos) :"
	Escribir  "18 - 15 años :", (edad_rango1_b * 100)/ totalEdad1 ,"%"
	Escribir " 26 - 40 años :", (edad_rango2_b * 100) / totalEdad2 ,"%"
	Escribir " 41 - 60 años :", (edad_rango3_b * 100) /totalEdad3 ,"%"
	Escribir "  Más de 60 años ", (edad_rango4_b * 100) / totalEdad4 ,"%"
	Escribir "Ciudades : "
	Escribir "Barranquilla : " , (barranquilla3 * 100)/totalQuilla,"%"
	Escribir "Bogotá : ", (bogota3 * 100)/totalBogota ,"%"
	Escribir  "Cali : ", (cali3 * 100)/totalcali ,"%"
	Escribir  "Cartagena ", (cartagena3 * 100)/totalCartagena ,"%"
	Escribir "Medellín : ", (medellin3)/totalmedellin,"%"
	escribir "---------------------------------------------------------"
	
FinAlgoritmo

