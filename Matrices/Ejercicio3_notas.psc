Algoritmo Matrices_notas_Estudiante
	
	total_notas <- 4
	Escribir "¿Cuántos estudiantes va a ingresar? :"
	Leer num_estudiantes
	
	Dimension vectorNombres[num_estudiantes]
	Dimension definitivasVector[num_estudiantes]
	Dimension matriz[total_notas, num_estudiantes]
	
	//Llenar el vector con los nombres de estudiantes
	Para i <-1 Hasta num_estudiantes Con Paso 1 Hacer
		Escribir Sin Saltar "Digite el nombre del alumno : ",i
		Leer nombre
		vectorNombres[i] <- nombre
	FinPara
	
	//para cada estudiante, pido las notas (4 notas)
	Para j <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		Escribir vectorNombres[j]
		
		Para k <- 1 Hasta total_notas Con Paso 1 Hacer
			
			Escribir Sin Saltar "Nota : ", k
			Leer nota
			matriz[k,j]<-nota
		FinPara
	FinPara
	//Mostrar las notas de cada estudiante
	Para j <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		//Escribir vectorNombres[j]
		Para k <- 1 Hasta total_notas Con Paso 1 Hacer
			
			Escribir  Sin Saltar  " ", matriz[k,j];
		FinPara
		Escribir  "	 "
	FinPara
	
	Para i <-1 Hasta num_estudiantes Con Paso 1 Hacer
		
		Para j <- 1 Hasta total_notas Con Paso 1 Hacer
			definitivasVector[i] <-( matriz[j,i] + definitivasVector[i])
		FinPara
	FinPara
	Para i<- 1 Hasta num_estudiantes Con Paso 1 Hacer
		DefinitivasVector[i] <-(DefinitivasVector[i])/total_notas
	FinPara
	
	//Definitiva por cada estudiante //
	Para i <-1 Hasta num_estudiantes Con Paso 1 Hacer
		Escribir vectorNombres[i] , " nota definitiva : ", definitivasVector[i]
	FinPara
	
	//menor definitiva
	menorNota <- definitivasVector[1]
	Para i<-1 Hasta num_estudiantes Con Paso 1 Hacer
		si definitivasVector[i] <= menorNota Entonces
			menorNota <- definitivasVector[i]
			nombreMenor <- vectorNombres[i]
		FinSi
	FinPara
	Escribir "El estudiante con la nota definitiva con menor valor fue : ", nombreMenor, " su nota: ", menorNota
	
	//mayor definitiva
	mayorNota <- 0
	para i <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		si definitivasVector[i] > mayorNota Entonces
			mayorNota <- definitivasVector[i]
			nombre <- vectorNombres[i]
		FinSi
	FinPara
	Escribir "El estudiante con la nota definitiva con mayor valor fue : ", nombre, " su nota: ", mayorNota
	
FinAlgoritmo
