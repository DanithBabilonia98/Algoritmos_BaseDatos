Algoritmo Calcular_media_altaybajaNota
	Definir nota, acumulador, total_est , nota_mayor, nota_menor Como Real
	
	total_est<- 5
	acumulador <- 0
	
	Para x<-1 Hasta total_est Con Paso 1 Hacer
		Escribir "Estudiante :" x, " Ingrese la nota :"
		Leer nota
		acumulador<- acumulador + nota
		promedio <- acumulador/ total_est
		
		si x = 1 Entonces
			nota_mayor <- nota
		SiNo
			si nota > nota_mayor Entonces
				nota_mayor <- nota
			finsi
			si x = 1 Entonces
				nota_menor <- nota
			SiNo
				si	nota < nota_mayor Entonces
					nota_menor <- nota
				FinSi
			FinSi
			
		FinSi
		contador <-contador + 1
		
	Fin Para
	Escribir "El promedio de las notas ingresadas es : ", promedio
	Escribir "la nota más alta es : ", nota_mayor
	Escribir  "la nota más baja es: ", nota_menor
FinAlgoritmo
