Algoritmo Personas_Por_Municipio
	Escribir  "Digite cantidad de encuestas a realizar "
	leer num_encuestas
	
	Dimension vectorMunicipio[num_encuestas]
	Dimension total_personas[num_encuestas]
	
	numero_pers <- 0
	
	Para i<- 1 Hasta num_encuestas Con Paso 1 Hacer
		Escribir "Municipio :"
		Leer municipio
		
		Escribir "Cantidad de personas que viven en la casa :"
		Leer  numero_personas
		para j<-1 Hasta i Con Paso 1 Hacer
			
			si municipio = vectorMunicipio[j] Entonces
				total_personas[j] <- total_personas[j] + numero_personas
				j<- i +1
			SiNo
				si j == i Entonces
					
					vectorMunicipio[j] <- municipio
					
					total_personas[j] <- total_personas[j] + numero_personas
					
				FinSi
			FinSi

		FinPara	
		
	FinPara
	para i<- 1 Hasta num_encuestas Con Paso 1 Hacer
		
		municipio <- vectorMunicipio[i]
		numero_personas <-total_personas[i]
		si numero_personas <>0 Entonces
			Escribir municipio , ", Total censados:  ", numero_personas
		FinSi
		
	FinPara
	num_menor <- total_personas[1]
	para i <- 1 hasta num_encuestas -1  hacer
		
		si total_personas[i] < num_menor entonces
			num_menor <- total_personas[i]	
			municipio <- vectorMunicipio[i]		
		finSi
			
	finPara
	
	imprimir "Municipio con menos personas encuestadas fue: ", municipio , " con ", num_menor, " Personas"
FinAlgoritmo
