Algoritmo Compañia_Transporte
	
	Dimension matriz_Dias_Semana[6,5]
	Dimension dias_Semana[6]
	Dimension nombres[5]
	Dimension horas_Dias[6]
	Dimension salario_Semanal[5]
	Dimension total_horas_trabajadas[5]
	Dimension valor_hora[5]
	
	dias_Semana[1]<- "Lunes"
	dias_Semana[2]<- "Martes"
	dias_Semana[3]<- "Miércoles"
	dias_Semana[4]<- "Jueves"
	dias_Semana[5]<- "viernes"
	dias_Semana[6]<- "Sábado"
	
	Para i <-1 Hasta 5 Con Paso 1 Hacer
		Escribir Sin Saltar "Digite el nombre del conductor : ",i
		Leer nombre
		nombres[i]<- nombre
	FinPara
	
	Para j <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir nombres[j]
		
		Para k <- 1 Hasta 6 Con Paso 1 Hacer
			
			Escribir Sin Saltar "Horas trabajadas, para el día ", dias_Semana[k]
			Leer cantidad_hora
			matriz_Dias_Semana[k,j]<- cantidad_hora
		FinPara
		
		Escribir Sin Saltar "Valor por hora : "
		Leer valorHora
		
		valor_hora[j] <- valorHora
		
	FinPara
	
	//Calcular total horas trabajadas por conductor durante la semana
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Para  j <- 1 Hasta 6 Con Paso 1 Hacer
			total_horas_trabajadas[i] <- total_horas_trabajadas[i] + matriz_Dias_Semana[j,i]
		FinPara
	FinPara
	
	//total horas trabajadas por día
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Para  j <- 1 Hasta 6 Con Paso 1 Hacer
			horas_Dias[j] <- horas_Dias[j] + matriz_Dias_Semana[j,i]
		FinPara
	FinPara
	
	//salario semanal por conductor
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		salario_Semanal[i]<- total_horas_trabajadas[i] * valor_hora[i]
	FinPara
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir nombres[i], "	 --------total horas trabajadas a la semana:  ", total_horas_trabajadas[i], " --------Salario semanal ", salario_Semanal[i]
	FinPara
	 
	 // calcular el total  que debe pagar la empresa a la semana
	Para i<- 1 Hasta 5 Con Paso 1 Hacer
		total_pago_semana <- total_pago_semana + salario_Semanal[i]
	FinPara
	Escribir  "La compañía debe pagar a la semana un total de : $", total_pago_semana , " pesos"
	
	//Determinar trabajador/ conductor trabajó mas el día lunes
	valorMayor <-0
	nombreTrabajador <- ""
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Para j <-1 Hasta 6 Con Paso 1 Hacer
			si j==1 Entonces
				si matriz_Dias_Semana[j,i] > valorMayor Entonces
					valorMayor<- matriz_Dias_Semana[j,i]
					nombreTrabajador <- nombres[i]
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir "El conductor que más trabajó el día lunes fue : ", nombreTrabajador, " con un total de días : ", valorMayor
	
	//Conductor con menor salario a la semana
	menorSalario <- salario_Semanal[1]
	Para  i<- 1 Hasta 5 Con Paso 1 Hacer
		si salario_Semanal[i] <=  menorSalario Entonces
			menorSalario <- salario_Semanal[i]
			nombreTrabajador_menorSalario <- nombres[i]
		FinSi
	FinPara
	Escribir Sin Saltar " "
	Escribir "El trabajador con menor salario fue : ", nombreTrabajador_menorSalario, " y salario fue:  $", menorSalario
	
	//Día mas productivo de la empresa
	diaMasProductivo <- 0
	nombreDia <- ""
	Para i <-1 Hasta 6 Hacer
		si horas_Dias[i] > diaMasProductivo Entonces
			diaMasProductivo <- horas_Dias[i]
			nombreDia <- dias_Semana[i]
		FinSi
	FinPara
	Escribir Sin Saltar "El día más productivo de la empresa fue el ", nombreDia, " con un total de horas trabajadas de : ", diaMasProductivo
FinAlgoritmo
