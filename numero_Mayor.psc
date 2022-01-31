Proceso  numero_Mayor
	Definir numero1, numero2, numero3  como reales
	
	Escribir 'numero 1: '
	Leer  numero1
	
	Escribir 'Numero 2: '
	Leer  numero2
	
	Escribir 'numero 3: '
	Leer numero3
	
	si numero1 > numero2 Entonces
		si numero1 > numero3 Entonces
			Escribir 'el mayor es :', numero1
		SiNo
			Escribir 'el mayor es : ', numero3
				
		FinSi
	SiNo
		
		si numero2 > numero3 Entonces
			Escribir 'el mayor es : ', numero2
		FinSi
	FinSi
	
	
FinProceso

