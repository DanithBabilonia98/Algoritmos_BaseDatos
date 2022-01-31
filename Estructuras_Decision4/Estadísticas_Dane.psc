Algoritmo Estadísticas_Dane
	Definir sexo, estado_civil Como Caracter
	
	bandera <- Verdadero
	
	Repetir
		Escribir "Ingresar nuevo ciudadano? 1. Si 2. No : "
		Leer opc
		si (opc== 1) Entonces
			Escribir "¿Donde se encuentra? 1. Medellín 2. Cartagena 3. Bogotá 4. Otra"
			Leer ciudad
			Segun ciudad Hacer
				1:
					Escribir "Sexo: 1.Femenino 2. Masculino : "
					Leer sexo
					si sexo = "1" Entonces
						Escribir "Ingrese su estado civil: 1. soltera 2. casada 3. no responde :"
						Leer estado_civil
						si estado_civil = "1" Entonces
							cont_soltera <- cont_soltera + 1
						FinSi
					FinSi
					//es mujer? soltera o no?
				2:
					Escribir "Sexo: 1.Femenino 2. Masculino : "
					Leer sexo
					si sexo = "2" Entonces
						Escribir "Ingrese su estado civil: 1. soltero 2. casado 3. no responde :"
						Leer estado_civil
						si estado_civil = "2" Entonces
							cont_casado <- cont_casado + 1
						FinSi
					FinSi
					// es hombre ? está casado o no?
				3:
					Escribir "Ingrese su edad : "
					Leer  edad
					
					si edad >= 18 Entonces
						Escribir "Usted puede votar "
						cont_votantes <- cont_votantes + 1
					FinSi
					//edad
				4:Escribir "Sexo: 1.Femenino 2. Masculino : "
					Leer sexo
					si sexo = "1" Entonces
						Escribir "Ingrese su edadd : "
						Leer edad
						si edad >= 18 y edad < 28 Entonces
							Escribir "Ingrese su salario : "
							Leer  salario
							cont_mujeres <- cont_mujeres + 1 
							total_salarios <- total_salarios + salario
						FinSi
						promedio <- total_salarios / cont_mujeres
					FinSi
					
					//edad , Salario
				De Otro Modo:
					Escribir "Ingrese una opción válida"
			Fin Segun
		SiNo
			Escribir "Finalizó programa : "
			bandera <- Falso
		FinSi
		
		
	Hasta Que bandera = Falso
	
	Escribir "Mujeres solteras en Medallo :", cont_soltera
	Escribir "Hombres solteros en Cartacho: ", cont_casado
	Escribir "Personas que pueden votar en Bogotá : ", cont_votantes
	Escribir "Promedio del Salario de mujeres menores de 28 :", promedio
	
FinAlgoritmo
