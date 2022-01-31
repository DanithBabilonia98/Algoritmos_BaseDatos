Algoritmo impuesto_supermercado
	
	bandera <- Verdadero
	total <- 0
	valor_total <- 0
	Mientras bandera Hacer
		
		Escribir "Ingreso nuevo usuario? Si --- No "
		Leer opc
		
		si opc = "Si" o opc = "SI" or opc= "si" Entonces
			Escribir "Cantidad de productos a comprar : "
			Leer  cantidad_productos
			para x<-1 Hasta cantidad_productos Con Paso 1 Hacer
				Escribir "Precio del producto: ", x
				Leer  precio_producto
				si precio_producto >10000 y precio_producto <=30000 Entonces
					precio_producto1 <- precio_producto * 1.3
					Escribir "Precio con impuesto : " , precio_producto1
					Escribir "precio del producto : ", precio_producto
					impuesto1 <- impuesto1 + 1
				SiNo
					si precio_producto >30000 y precio_producto <= 50000 Entonces
						precio_producto2 <- precio_producto * 1.4
						Escribir "Precio con impuesto : " , precio_producto2
						Escribir "precio del producto : ", precio_producto
						impuesto2 <- impuesto2 + 1
					SiNo
						si precio_producto > 50000 Entonces
							precio_producto3 <- (precio_producto * 1.5)
							Escribir "Precio con impuesto : ", precio_producto3
							Escribir "precio del producto : ", precio_producto
							impuesto3 <- impuesto3 + 1
						SiNo
							si precio_producto > 0 y precio_producto <= 10000 Entonces
								precio_producto4 <- precio_producto
								Escribir "Este producto no tiene impuesto:" , precio_producto4
								
							FinSi
							
						FinSi
					FinSi
					
				FinSi
				
			FinPara
			total <- total + precio_producto1 + precio_producto2 + precio_producto3 + precio_producto4
			valor_total <- total + valor_total
			total_impuesto <- impuesto1 + impuesto2+ impuesto3 
			
			Escribir "Total impuestos a pgar por cliente : ", total_impuesto
			Escribir  "El valor a pagar por su compra es : ", total
			
			si total > 500000 Entonces
				descuento <- total * 0.9
				Escribir  "Total compra: ", total, " descuento: ", descuento
				contador_descuentos <- contador_descuentos + 1
				total_Valor_descuento <- total_Valor_descuento + descuento
			FinSi
			
		SiNo
			Escribir " Programa Finalizado "
			bandera <- Falso
		FinSi
		
	FinMientras
	Escribir  "Precio total  es : ", valor_total
	Escribir "Total clientes con descuento : " , contador_descuentos
	Escribir "Valor total de descuento : ", total_Valor_descuento
	
FinAlgoritmo
