Algoritmo calcular_salario
	Definir salario, valor_hora, total_horas, salario_minimo, auxilio_transporte, cantidad_trabajadores, contador1, contador2 Como Real
	salario_minimo <- 908526
	auxilio_transporte <- 106524
	Escribir "Digite la cantidad de empleados que tiene su empresa: "
	Leer cantidad_trabajadores
	
	contador1<-0
	contador2<-0
	
	Para x<-1 Hasta cantidad_trabajadores Con Paso 1 Hacer
		Escribir 'Ingrese las horas laborales : '
		Leer total_horas
		
		Escribir 'Ingrese el valor por hora : '
		Leer valor_hora
		
		salario <- valor_hora * total_horas
		
		si salario <= (salario_minimo * 2) Entonces
			salario <- salario + auxilio_transporte
			contador1<- contador +1
		SiNo
			si salario >= (salario_minimo * 4) Entonces
				salario <- salario - (salario * 0.10)
				contador2<- contador + 1
			FinSi
		FinSi
		
	Fin Para
	
	
	Escribir 'La cantidad de personas con sderecho a auxilio de tansporte es  ', contador1
	Escribir 'La cantidad de empleados que se le hará retención es: ', contador2
	
FinAlgoritmo
