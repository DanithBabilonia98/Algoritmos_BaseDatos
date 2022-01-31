Algoritmo deudas_clientes
	Definir dias Como Entero
	bandera <- Verdadero
	Repetir
		
		Escribir "¿Ingresar nuevo cliente? 1.Si --- 2.No "
		Leer opc
		si opc = 1 Entonces
			Escribir "Valor de su deuda es : "
			Leer  deuda 
			
			Escribir "¿A los cuantos días del mes cancelará su deuda ? 1. 10 primeros días 2. Después de 10 días 3. A final del mes "
			Leer  dias 
			
			Segun dias Hacer
				1:
					descuento <- deuda * 0.03
					si descuento > deuda Entonces
						deuda <- deuda - 50000
					SiNo
						deuda <- deuda - descuento
					FinSi
					Escribir "Su deuda queda en :", deuda
					clientes_descuento <- clientes_descuento + 1	
					valor_descuento_total <-  valor_descuento_total + descuento
				2:
					Escribir "Su deuda sigue siendo :", deuda
					clientes_sin_descuento <- clientes_sin_descuento + 1
					
				3:
					recargo <- deuda * 0.1
					deuda<- deuda + recargo
					Escribir "Su deuda actual es: ", deuda
					clientes_recargo <- clientes_recargo + 1
					valor_recargo_total <- valor_recargo_total + recargo
				De Otro Modo:
					Escribir  "Esta opción no es válida.  "
			Fin Segun
		SiNo
			Escribir "Programa terminado "
			bandera <- Falso
			
		FinSi
		
	Hasta Que bandera = Falso
	si(clientes_descuento > clientes_recargo) y (clientes_descuento > clientes_sin_descuento)Entonces
		Escribir "Hubo mayor número de clientes, con descuento :", clientes_descuento
	SiNo
		si (clientes_recargo> clientes_descuento) y (clientes_recargo > clientes_descuento)Entonces
			Escribir "Hubo mayor cantidad de clientes, con recargo ", clientes_recargo
		SiNo
			Escribir "HUbo mayor cantidad de clientes, sin descuento", clientes_sin_descuento
		FinSi
		
		
	FinSi
	
	Escribir "Cantidad de clientes con descuento : ", clientes_descuento
	Escribir "Cantidad de clientes con recargo : ", clientes_recargo
	Escribir "Valor total dado en descuentos es : ", valor_descuento_total
	Escribir "Valor total obtenido por recargo es: ", valor_recargo_total
FinAlgoritmo
