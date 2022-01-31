Algoritmo Programa_Coldeporte
	Definir sexo Como Caracter
	Definir edad,estatura,peso Como Real
	bandera <- Verdadero
	cont_hombres_bucaramanga <- 0
	cont_hombres_ibague <- 0
	cont_hombres_medellin <- 0
	cont_mujeres_bucaramanga <- 0
	cont_mujeres_ibague <- 0
	cont_mujeres_medellin <- 0
	Repetir
		Escribir 'Desea hacer una nueva inscripción? 1. si 2. no '
		Leer opc
		Si opc='1' Entonces
			Escribir 'Ingrese su sexo : 1. Femenino 2. Masculino '
			Leer sexo
			Segun sexo  Hacer
				'1':
					Escribir 'Ingrese su edad '
					Leer edad
					Si edad>=18 Y edad<=23 Entonces
						Escribir 'Estatura (cms): '
						Leer estatura
						Si estatura>=180 Entonces
							Escribir 'Peso : '
							Leer peso
							Si peso<=70 Entonces
								Escribir 'Ciudad a la que pertenece 1.Bucaramanga 2. Ibagué, 3. Medellín '
								Leer ciudad
								Segun ciudad  Hacer
									1:
										cont_mujeres_bucaramanga <- cont_mujeres_bucaramanga+1
										suma_edades_bucaramanga <- suma_edades_bucaramanga+edad
										suma_estura_bucaramanga <- suma_estura_bucaramanga+estatura
										promedio_edad_bucaramanga <- suma_edades_bucaramanga/cont_mujeres_bucaramanga
										promedio_estatura_bucaramanga <- suma_estura_bucaramanga/cont_mujeres_bucaramanga
									2:
										// contar mujeres en Ibagué
										// suma de edades
										// suma de estauras
										cont_mujeres_ibague <- cont_mujeres_ibague+1
										suma_edades_ibague <- suma_edades_ibagué+edad
										suma_estura_ibague <- suma_estura_ibague+estatura
										promedio_edad_ibague <- suma_edades_ibague/cont_mujeres_ibague
										promedio_estatura_ibague <- suma_estura_ibague/cont_mujeres_ibague
									3:
										// contar mujeres en Medallo
										// suma de edades
										// suma de esturas
										cont_mujeres_medellin <- cont_mujeres_medellin+1
										suma_edades_medellin <- suma_edades_medellin+edad
										suma_estura_medellin <- suma_estura_medellin+estatura
										promedio_edad_medellin <- suma_edades_medellin/cont_mujeres_medellin
										promedio_estatura_ibague <- suma_estura_medellin/cont_mujeres_medellin
									De Otro Modo:
										Escribir 'Ingrese una ciudad válida'
								FinSegun
							SiNo
								Escribir 'No cumple con el peso establecido'
							FinSi
						SiNo
							Escribir 'No cumple con la estura establecida'
						FinSi
					SiNo
						Escribir 'No cumple con la edad establecida'
					FinSi
				'2':
					Escribir 'Ingrese su edad '
					Leer edad
					Si edad>=18 Y edad<=23 Entonces
						Escribir 'Estatura (cms): '
						Leer estatura
						Si estatura>=180 Entonces
							Escribir 'Peso : '
							Leer peso
							Si peso<=70 Entonces
								Escribir 'Ciudad a la que pertenece 1.Bucaramanga 2. Ibagué, 3. Medellín '
								Leer ciudad
								Segun ciudad  Hacer
									1:
										cont_hombres_bucaramanga <- cont_hombres_bucaramanga+1
										suma_edades_bucaramanga <- suma_edades_bucaramanga+edad
										suma_estura_bucaramanga <- suma_estura_bucaramanga+estatura
										promedio_edad_bucaramanga_hombres <- suma_edades_bucaramanga/cont_hombres_bucaramanga
										promedio_estatura_bucaramanga_hombres <- suma_estura_bucaramanga/cont_hombres_bucaramanga
									2:
										// contar hombres en Ibagué
										// suma de edades
										// suma de estauras
										cont_hombres_ibague <- cont_hombres_ibague+1
										suma_edades_ibague <- suma_edades_ibagué+edad
										suma_estura_ibague <- suma_estura_ibague+estatura
										promedio_edad_ibague_hombres <- suma_edades_ibague/cont_hombres_ibague
										promedio_estatura_ibague_hombres <- suma_estura_ibague/cont_hombres_ibague
									3:
										// contar hoombres en Medallo
										// suma de edades
										// suma de esturas
										cont_hombres_medellin <- cont_hombres_medellin+1
										suma_edades_medellin <- suma_edades_medellin+edad
										suma_estura_medellin <- suma_estura_medellin+estatura
										promedio_edad_medellin_hombres <- suma_edades_medellin/cont_hombres_medellin
										promedio_estatura_medellin_hombres <- suma_estura_medellin/cont_hombres_medellin
									De Otro Modo:
										Escribir 'Ingrese una ciudad válida'
								FinSegun
							SiNo
								Escribir 'no comple con el peso requerido'
							FinSi
						SiNo
							Escribir 'No cumple con la estura establecida'
						FinSi
					SiNo
						Escribir 'No cumple con la edad establecida'
					FinSi
				De Otro Modo:
					Escribir 'Ingrese una opción válida : '
			FinSegun
		SiNo
			Escribir 'Programa Finalizado'
			bandera <- falso
		FinSi
	Hasta Que bandera=falso
	
	
	Si cont_hombres_bucaramanga<cont_hombres_ibague Entonces
		Si cont_hombres_bucaramanga<cont_hombres_medellin Entonces
			Escribir 'Ciudad con menos hombres es: Bucaramanga:',cont_hombres_bucaramanga
		SiNo
			Si cont_hombres_ibague<cont_hombres_medellin Entonces
				Escribir 'Ciudad con menos hombres es Ibague: ',cont_hombres_ibague
			SiNo
				si cont_hombres_bucaramanga = cont_hombres_medellin
					Escribir 'Ciudad con menos hombres son:  Bucaramanga:',cont_hombres_bucaramanga,' y Medellin: ',cont_hombres_medellin
				SiNo					
					Escribir 'Ciudad con menos hombres: Medellin2: ',cont_hombres_medellin
				FinSi				
			FinSi
		FinSi
	SiNo
		Si cont_hombres_medellin>cont_hombres_ibague Entonces
			si cont_hombres_ibague = cont_hombres_bucaramanga Entonces				
				Escribir 'Ciudad con menos hombres son: Ibague:',cont_hombres_ibague,' y Bucaramanga:',cont_hombres_bucaramanga
			SiNo
				Escribir 'Ciudad con menos hombres es Ibague: ',cont_hombres_ibague
			FinSi			
		SiNo
			Si cont_hombres_Ibague = cont_hombres_medellin Entonces
				Escribir 'Ciudad con menos hombres son: Ibague:',cont_hombres_ibague,' y Medellin: ',cont_hombres_medellin
			SiNo
				Escribir 'Ciudad con menos hombres: Medellin: ',cont_hombres_medellin
			FinSi
		FinSi
	FinSi
	
	
	
	Si (cont_mujeres_bucaramanga>cont_mujeres_ibague) Y (cont_mujeres_bucaramanga>cont_mujeres_medellin) Entonces
		Escribir 'Ciudad con más mujeres: Bucaramanga:',cont_mujeres_bucaramanga
	SiNo
		Si (cont_mujeres_ibague>cont_mujeres_bucaramanga) Y (cont_mujeres_ibague>cont_mujeres_medellin) Entonces
			Escribir 'Ciudad con más mujeres: Ibagué:',cont_mujeres_ibague
		SiNo
			Si (cont_mujeres_medellin>cont_mujeres_bucaramanga) Y (cont_mujeres_medellin>cont_mujeres_ibague) Entonces
				Escribir 'Ciudad con más mujeres: Medellín:',cont_mujeres_medellin
			FinSi
		FinSi
	FinSi
FinAlgoritmo
