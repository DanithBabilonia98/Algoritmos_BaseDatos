Algoritmo triangulos
	Definir num_registro Como Entero
	Escribir "Cantidad de registros: "
	Leer num_registro
	
	Repetir
		Escribir "lado 1 : "
		Leer lado1
		Escribir  "lado 2 : "
		Leer lado2
		Escribir "lado 3 : "
		Leer lado3
		
		si (lado1+lado2) > lado3 Entonces
			si (lado1+lado3) > lado2 Entonces
				si (lado2+lado3) > lado1 Entonces
					si ((lado1 == lado2) y (lado2 == lado3)) Entonces
						Escribir "Triángulo Equilatero"
						equilateros<- equilateros + 1
					SiNo
						si ((lado1 == lado2) o (lado1==lado3) o (lado2 == lado3)) Entonces
							Escribir "Triángulo Isosceles"
							isosceles <- isosceles + 1
							si ((lado1^2 + lado2^2) == lado3^2) o (lado1^2 + lado3^2 == lado2^2) o(lado3^2 + lado2^2 == lado1^2)Entonces
								Escribir "Triángulo Rectángulo "
								Escribir  " "
								rectangulo<- rectangulo + 1
							FinSi
						SiNo
							si(lado1<> lado2) o (lado1 <> lado3) o (lado3 <> lado2) Entonces
								Escribir "Triángulo Escaleno"
								escaleno <- escaleno + 1
								si ((lado1^2 + lado2^2) == lado3^2) o (lado1^2 + lado3^2 == lado2^2) o(lado3^2 + lado2^2 == lado1^2)Entonces
									Escribir "Triángulo Rectángulo "
									Escribir  " "
									rectangulo<- rectangulo + 1
								FinSi
								
							FinSi
						
						FinSi
					FinSi					
				FinSi
			SiNo
				Escribir "No se puede hacer un triangulo con estas lineas"
			FinSi
		FinSi
		
		x <- x +1
	Hasta Que x >= num_registro
	Escribir  "Triangulos Equilateros :", equilateros
	Escribir  "Triangulos Isosceles :", isosceles
	Escribir  "Triangulos Escalenos :", escaleno
	Escribir  "Triangulos Rectángulos :  ", rectangulo
	
FinAlgoritmo
