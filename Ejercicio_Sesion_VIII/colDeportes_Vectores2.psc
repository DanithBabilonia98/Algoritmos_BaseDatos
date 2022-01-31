Algoritmo colDeportes_Vectores2
	
	Escribir "Cantidad de aspirantes : "
	leer numero_aspirantes
	
	Dimension  vector_ciudad[numero_aspirantes]
	Dimension vector_edad[numero_aspirantes]
	Dimension  vector_estatura[numero_aspirantes]
	
	Para x <- 1 Hasta numero_aspirantes -1 Hacer
		Escribir "Aspirante nº: ", x
		Escribir "Ciudad : "
		Leer ciudad
		Escribir "Edad : "
		Leer edad
		Escribir "Estatura  :"
		Leer estatura
		Escribir "Peso : "
		Leer peso
		Escribir "Sexo : (Femenino: f  - Masculino: m)"
		Leer sexo
		si edad >= 19 y edad <=23 Entonces
			si estatura >= 170 Entonces
				si peso <=70 Entonces
					si sexo = "femenino" o sexo = "f" Entonces
						para i <-1 Hasta x-1 Hacer
							si ciudad = vector_ciudad[i] Entonces
								vector_edad[i] <- edad
								vector_estatura[i] <- estatura
								contador_mujeres <- contador_mujeres +1
								i <- x + 1
							SiNo
								si  i == x Entonces
									vector_ciudad[i] <- ciudad
									vector_edad[i] <- edad
									vector_estatura[i] <- estatura
									contador_mujeres <- contador_mujeres +1
								FinSi
							FinSi
						FinPara
					
					SiNo
						si sexo = "masculino" o sexo ="m" Entonces
							para i <-1 Hasta x-1 Hacer
								si ciudad = vector_ciudad[i] Entonces
									vector_edad[i] <- edad
									vector_estatura[i] <- estatura
									contador_hombres <- contador_hombres +1
									i <- x + 1
								SiNo
									si  i == x Entonces
										vector_ciudad[i] <- ciudad
										vector_edad[i] <- edad
										vector_estatura[i] <- estatura
										contador_hombres <- contador_hombres +1
									FinSi
								FinSi
							FinPara
						SiNo
							Escribir "Digite opción válida"
						FinSi
					FinSi
				SiNo
					Escribir "Peso no cumple"
				FinSi
			SiNo
				Escribir "Estatura no cumple"
			FinSi
		SiNo
			Escribir "Edad no cumple "
		FinSi
		
	FinPara
	
	Para i <- 1 Hasta numero_aspirantes-1 Hacer
		Imprimir  vector_ciudad[i]
	FinPara
FinAlgoritmo
