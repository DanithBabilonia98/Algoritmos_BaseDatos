Proceso  mayor_n_Numeros
	Definir  numero como Real
	Definir contador, cantidad, num_mayor como entero
	Escribir 'Ingrese total de numeros'
	Leer cantidad
	contador <- 1
	Repetir
		Escribir 'Ingresa numero ', contador
		Leer numero
		
		si contador = 1 Entonces
			num_mayor <- numero
		SiNo
			si numero > num_mayor Entonces
				num_mayor <- numero
			FinSi
		FinSi
		contador <-contador + 1
	Hasta Que contador > cantidad
	
	Escribir 'El número mayor es :', num_mayor
FinProceso
