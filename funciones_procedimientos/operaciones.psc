Funcion  resultado <-Suma ( numero1,numero2 )
	resultado <- numero1 + numero2
Fin Funcion

Funcion resultado <- Resta ( numero1,numero2 )
	resultado <- numero1 - numero2
Fin Funcion

Funcion resultado <- Multiplicacion ( numero1,numero2 )
	resultado <- numero1 * numero2
Fin Funcion

Funcion resultado <- Division ( numero1,numero2 )
	si(numero1 <>0 ) entonces 
		resultado <- numero1 / numero2
	SiNo
		Escribir "No puede realizarse la operaci�n"
	FinSi

	
Fin Funcion


Algoritmo funciones_Calculadora
	
	//Pedir dos n�meros 
	Escribir "Num 1: " 
	Leer num1
	Escribir  "Num 2: "
	Leer num2 
	//Seleccionar la operaci�n a realizar con esos n�meros :
	
	Escribir "�Qu� quiere realizar ? "
	Escribir "1. Suma"
	Escribir "2. Resta"
	Escribir "3. Multiplicaci�n " 
	Escribir "4. Divisi�n "
	Leer opc
	Segun opc Hacer
		1:
		Escribir "La suma es: ", Suma(num1, num2)
		2:
			Escribir  "La Resta es: ", Resta(num1, num2)	
			
		3:
			Escribir "La Multiplicaci�n es : ", Multiplicacion(num1, num2)
			
		4: 
			Escribir "La Divisi�n es : ", Division(num1, num2)
		De Otro Modo:
			Escribir "Digite una opci�n v�lida"
	Fin Segun
	
	
	
	
FinAlgoritmo
