Algoritmo Matrices_notas_Estudiante
	
	total_notas <- 6
	Escribir "¿Cuántos estudiantes va a ingresar? :"
	Leer num_estudiantes
	
	Dimension vectorNombres[num_estudiantes]
	Dimension promedio[num_estudiantes]
	Dimension matriz[total_notas, num_estudiantes]
	Dimension asignaturas[6]
	Dimension promedioAsignaturas[6]
	
	//Se piden la asignaturas  (en este caso se pasarán directamente)
	
	asignaturas[1] <- "Matemáticas"
	asignaturas[2] <- "Lenguaje"
	asignaturas[3] <- "Inglés"
	asignaturas[4] <- "Química"
	asignaturas[5] <- "Física"
	asignaturas[6] <- "Informática"
	
	//Llenar el vector con los nombres de estudiantes
	Para i <-1 Hasta num_estudiantes Con Paso 1 Hacer
		Escribir Sin Saltar "Digite el nombre del alumno : ",i
		Leer nombre
		vectorNombres[i] <- nombre
	FinPara
	
	//para cada estudiante, pido las notas de cada asignatura (6 notas)
	Para j <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		Escribir vectorNombres[j]
		
		Para k <- 1 Hasta total_notas Con Paso 1 Hacer
			
			Escribir Sin Saltar "Nota para la asignatura : ", asignaturas[k]
			Leer nota
			matriz[k,j]<-nota
		FinPara
	FinPara
	Escribir  " "
	//Mostrar las notas de cada estudiante
	Escribir "Matriz de notas "
	Para j <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		//Escribir vectorNombres[j], "	"
		Para k <- 1 Hasta total_notas Con Paso 1 Hacer
			Escribir  Sin Saltar "|", asignaturas[k]," : ", matriz[k,j], "---------|"
		FinPara
		Escribir  "	 "
	FinPara
	//se suman las notas de cada estudiante para después promediarlas
	Para i <-1 Hasta num_estudiantes Con Paso 1 Hacer
		
		Para j <- 1 Hasta total_notas Con Paso 1 Hacer
			promedio[i] <- matriz[j,i] + promedio[i]
		FinPara
		promedio[i] <-(promedio[i])/total_notas
	FinPara
	
	//Calcular el suma de cada asignatura
	Para i <-1 Hasta num_estudiantes Con Paso 1 Hacer
		Para j <- 1 Hasta total_notas Con Paso 1 Hacer
			promedioAsignaturas[j] <-promedioAsignaturas[j] + matriz[j,i]
		FinPara
	FinPara
	
	//promedio de cada asignatura
	Para i <-1 Hasta total_notas Con Paso 1 Hacer
		promedioAsignaturas[i] <- promedioAsignaturas[i] / num_estudiantes
		
	FinPara
	Escribir   " "
	//promedio por cada asignatura
	Para  i<-1 Hasta total_notas Con Paso 1 Hacer
		Escribir asignaturas[i], " Promedio : ", promedioAsignaturas[i]
	FinPara
	Escribir  "	"
	
	//Definitiva por cada estudiante //
	Para i <-1 Hasta num_estudiantes Con Paso 1 Hacer
		Escribir vectorNombres[i] , " Nota Promedio : ", promedio[i]
	FinPara
	Escribir  "	"
	//menor definitiva
	menorNota <- promedio[1]
	Para i<-1 Hasta num_estudiantes Con Paso 1 Hacer
		si promedio[i] <= menorNota Entonces
			menorNota <- promedio[i]
			nombreMenor <- vectorNombres[i]
		FinSi
	FinPara
	Escribir "El estudiante con promedio más bajo fue : ", nombreMenor, " su nota: ", menorNota
		
	//mayor definitiva
	mayorNota <- 0
	para i <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		si promedio[i] > mayorNota Entonces
			mayorNota <- promedio[i]
			nombre <- vectorNombres[i]
		FinSi
	FinPara
	Escribir "El estudiante con mejor promedio fue : ", nombre, " su nota: ", mayorNota
	
	
	//Asignatura con menor promedio
	menorPromedio <- promedioAsignaturas[1]
	Para i <- 1 Hasta total_notas Con Paso 1 Hacer
		si promedioAsignaturas[i] <= menorPromedio Entonces
			menorPromedio<- promedioAsignaturas[i]
			nombreAsignatura <- asignaturas[i]
		FinSi
	FinPara
	Escribir "La asignatura con menos promedio fue ", nombreAsignatura, " promedio ", menorPromedio
	
	Escribir  " 	"
	Escribir "-------Promedios ordenados de menor a mayor ----------"
	
	Para i <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		minimo <- i
		Para j <-i+1 Hasta num_estudiantes Con Paso 1 Hacer
			si promedio[j] < promedio[minimo] Entonces
				minimo <- j
			FinSi
		FinPara
		auxiliar <- promedio[i]
		promedio[i] <- promedio[minimo]
		promedio[minimo] <- auxiliar
	FinPara
	
	Para i <- 1 Hasta num_estudiantes Con Paso 1 Hacer
		Escribir "Estudiante : ", vectorNombres[i] ," promedio : ", promedio[i]
	FinPara
FinAlgoritmo
