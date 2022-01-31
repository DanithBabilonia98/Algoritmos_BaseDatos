Algoritmo colDeportes_Vectores
	
	Escribir "Cantidad de aspirantes : "
	Leer cantidad
	
	Dimension vector_ciudad[cantidad]
	Dimension vector_edad[cantidad]
	Dimension vector_estatura[cantidad]
	Dimension vector_Sexo_Masculino[cantidad]
	Dimension vector_Sexo_Femenino[cantidad]
	
	
	
	Para indice <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ciudad"
		Leer ciudad
		Escribir "Edad :"
		Leer edad
		Escribir " Peso (kgs)"
		Leer peso
		Escribir "Estatura (cms)"
		Leer estatura
		Escribir "Sexo (f - femenino. m- masculino)"
		Leer sexo
		
		si edad >= 19 y edad <= 23 Entonces
			si peso <= 70 Entonces
				si estatuta >=170 Entonces
					
					para i <- 1 Hasta indice Con Paso 1 Hacer
						si ciudad = vector_ciudad[i] Entonces
							vector_edad[i] <- vector_edad[i] + edad
							vector_estatura[i] <- vector_estatura[i] + estatura
							si sexo = "femenino" Entonces
								vector_Sexo_Femenino[i]<- vector_Sexo_Femenino[i] + 1
							SiNo
								si sexo = "masculino" Entonces
									vector_Sexo_Masculino[i] <- vector_Sexo_Masculino[i] + 1
								FinSi
							FinSi
							
							i <- indice + 1
						SiNo
							si i == indice Entonces
								vector_ciudad[i] <- ciudad
							FinSi
							
						FinSi
					FinPara
				FinSi
			SiNo
				Escribir "No cumple con el peso"
			FinSi
		SiNo
			Escribir "No cumple con la edad "
		FinSi
	FinPara
	promedio <- 0
	para i <- 1 Hasta cantidad Con Paso 1 Hacer
		promedio <- promedio + vector_edad[i]
	FinPara
	promedio <- promedio / cantidad
	Escribir promedio
FinAlgoritmo
