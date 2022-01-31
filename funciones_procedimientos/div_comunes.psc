Funcion Divisores()
	Escribir "Numero 1 "
	Leer numero1
	Escribir "Numero 2"
	Leer numero2
	
	Dimension lista[5] 
	
	Si(numero1 < numero2) Entonces
		Para i <- 1 Hasta numero1 Con Paso 1 Hacer
			Si(numero1 % i == 0) Entonces
				si(numero1<> i)Entonces
					imprimir i
				FinSi
				
			FinSi
		FinPara
		
	SiNo
		Para i <- 1 Hasta numero2 Con Paso 1 Hacer
			Si(numero2% i == 0 ) Entonces
				si(numero2 <>i) Entonces
					Imprimir i
				FinSi
				
			FinSi
		FinPara
		
	FinSi
	
FinFuncion


Algoritmo DivisorComun
	
	Divisores()
	
FinAlgoritmo
