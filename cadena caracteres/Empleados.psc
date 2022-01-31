Algoritmo Empleados
	
	Para x<-1 Hasta 1000 Con Paso 1 Hacer
		Escribir "Empleado nº", x
		Escribir  "Digite su edad : "
		Leer edad
		
		si edad > 21 Entonces
			contador_edad21 <- contador_edad21 + 1 
		FinSi
		si edad > 18 y edad < 30 Entonces
			contador_edad <- contador_edad + 1
		FinSi
	Fin Para
	Escribir "Empleados mayores de 21 años :", contador_edad21
	Escribir "Empleados menores de 30 años : ", contador_edad
	
FinAlgoritmo
