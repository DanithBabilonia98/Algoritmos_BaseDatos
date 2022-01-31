Funcion divisoresComunes ( num1 , num2)
	Dimension vector[num1] 
	Dimension vector2[num2] 
	Dimension lista[100]
	Para  i <- 1 Hasta num1 Con Paso  1 Hacer
		si(num1 % i ==0 ) Entonces
			vector[i] <- i
		FinSi
	FinPara
	
	Para  j <-1 Hasta num2 Con Paso 1 Hacer
		Si(num2 % j == 0) Entonces
			vector2[j]<- j
		FinSi
	FinPara
	
	Para i <-1 Hasta num1 Con Paso 1 Hacer
		para j <- 1 Hasta num2 Con Paso 1 Hacer
			si(vector[i] == vector2[j]) Entonces
				lista[j]<-vector[j]
				
			FinSi
		FinPara
	FinPara
	
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		si(lista[i] <> 0) Entonces
			Escribir Sin Saltar   lista[i],", "
		FinSi
		
	FinPara
	
Fin Funcion

Algoritmo EnccontrarDivisoresComunes
	Escribir "Numero 1 "
	leer numero1
	Escribir "Numero 2"
	Leer numero2 
	
	divisoresComunes(numero1, numero2)
	
FinAlgoritmo
