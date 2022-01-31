Algoritmo Salario_Vectores
	
	salario_minimo <- 1000000
	Definir num Como Entero
	Escribir "Cantidad de Empleados : "
	Leer num
	
	Dimension vectornombres[num]
	Dimension vectorSalario[num]
	Dimension vectorSalarioRetencion[num]
	
	Para i<- 1 Hasta num Con Paso 1 Hacer
		escribir "Nombre Empleado nº ", i
		Leer nombre
		Escribir  "Digite las horas trabajadas :"
		Leer cant_horas
		Escribir "el valor por hora : "
		Leer  valor_hora
		
		salario <- cant_horas * valor_hora
		vectorSalario[i] <- salario
		
		vectornombres[i]<- nombre
		si salario > salario_minimo * 4 Entonces
			salarioretencion <- salario * 0.9
			vectorSalarioRetencion[i] <- salarioretencion
		FinSi
	FinPara
	
	Para i <- 1 Hasta num Con Paso 1 Hacer
		si salario < salario_minimo * 2 Entonces
			Escribir "Nombre empleado : ", vectornombres[i] , "--- Salario :", vectorSalario[i]
		SiNo
			si salario_minimo > salario_minimo * 2 y salario_minimo < salario_minimo * 4 Entonces
				Escribir "Nombre empleado : ", vectornombres[i] , "--- Salario :", vectorSalario[i]
			SiNo
				Escribir "Nombre empleado : ", vectornombres[i] , "--- Salario :", vectorSalario[i] ,"--- Salario Neto : ", vectorSalarioRetencion[i]
			FinSi
		FinSi
		
		
	FinPara
	may <- 0
	para i <- 1 Hasta num Con Paso 1 Hacer
		si vectorSalario[i] > may Entonces
			may <- vectorSalario[i]
			nombre <- vectornombres[i]
		SiNo
			may <- vectorSalarioRetencion[i]
			nombre <- vectornombres[i]
		FinSi
	FinPara
	Imprimir "Empleado más gana es : ",nombre ," ", may
	
FinAlgoritmo
