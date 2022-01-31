Funcion prom <- Promedio ( arreglo, cantidad )
	suma <- 0
	Para i<-1 Hasta cantidad Hacer
		suma <- suma + arreglo[i]
	FinPara
	prom <- suma/cantidad
FinFuncion


SubProceso NotaBaja(notas, cantidad)
	
FinSubProceso

SubProceso NotaAlta(notas, cantidad)
	
FinSubProceso

Funcion mostrarNotas(cantidad, notas)
	Para i<- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir  Sin Saltar notas[i],", "
	FinPara
FinFuncion

Algoritmo Notas
	cantidad <- 4
	Dimension vectorNotas[cantidad]
	
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Digite la nota: ", i
		Leer nota
		vectorNotas[i] <- nota
	FinPara
	
	mostrarNotas(cantidad, vectorNotas)
	Escribir ""
	Escribir "La nota promedio es :", Promedio(vectorNotas, cantidad)
FinAlgoritmo
