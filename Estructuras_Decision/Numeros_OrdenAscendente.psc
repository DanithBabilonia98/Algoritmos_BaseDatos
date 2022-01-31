Algoritmo Numeros_OrdenAscendente
	Definir num1, num2, num3 Como Real
	
	Escribir "Ingrese el numero 1"
	Leer num1
	Escribir "Ingrese el numero 2"
	Leer  num2
	Escribir "Ingrese el numero 3"
	Leer num3
	
	Si num1 < num2 Entonces
		si num2 < num3  Entonces
			Escribir num1,", ", num2,", ", num3
			
		SiNo
			si num1 < num3 Entonces
				
				Escribir num1, ", ", num3, ", " ,num2
			sino
				Escribir num3, ", ", num2, ", ", num1
			finsi
			
		FinSi
	SiNo
		si num1 < num3 Entonces
			Escribir num2, " , ",num1, " , ", num3	
		SiNo
			si num2 < num3 Entonces
				Escribir num2, ", ", num3, ", ", num1
			sino
				Escribir num3 , ", ", num2, "," , num1
			FinSi
			
		FinSi
	
		si num1 = num2 y num2 =num3 Entonces
			Escribir "son iguales"
			
		FinSi
		
	FinSi
	
	
	
FinAlgoritmo
