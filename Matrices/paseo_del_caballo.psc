Algoritmo paseo_del_caballo
	fila <- 3
	columna <- 2

	
	si fila >0 y columna>0 Entonces
		totalFilas <- 8
		totalColumnas <-8
		Dimension Tablero_Ajedrez[totalFilas, totalColumnas]
		Dimension movimientosFila[8]
		Dimension movimientosColumna[8]
		
//		movimientosFila[1]<- -2
//		movimientosFila[2] <- -1
//		movimientosFila[3] <- 1
//		movimientosFila[4] <- 2
//		movimientosFila[5] <- 2
//		movimientosFila[6] <- 1
//		movimientosFila[7] <- -1
//		movimientosFila[8] <- -2
//		
//		movimientosColumna[1] <- 1
//		movimientosColumna[2] <- 2
//		movimientosColumna[3] <- 2
//		movimientosColumna[4] <- 1
//		movimientosColumna[5] <- -1
//		movimientosColumna[6] <- -2
//		movimientosColumna[7] <- -2
//		movimientosColumna[8] <- -1
		
		celda <-1 
		Tablero_Ajedrez[fila, columna] <- celda 
		celda <- celda +1
		
		Mientras fila < totalFilas Hacer
			
			fila <- fila +2
			columna <- 1 + columna
			si Tablero_Ajedrez[fila,columna] == 0 Entonces
				Tablero_Ajedrez[fila,columna]<-celda
			SiNo
				fila <- fila +1 
				columna <- columna -1
			FinSi
			si fila > tamaño Entonces
				fila <- fila +1
			FinSi
			celda <-celda +1
		FinMientras
		
		Escribir  "========== Paseo Del Caballo =========="
		Escribir ""
		Para i<-1 Hasta totalFilas Con Paso 1 Hacer
			Para j <- 1 Hasta totalColumnas Con Paso 1 Hacer
			espacio <- "";
			si Tablero_Ajedrez[i,j] < 10 Entonces				
				espacio <- "  ";
			Sino
				si Tablero_Ajedrez[i,j]< 100 Entonces					
					espacio <- " ";			
				FinSi
			FinSi
			Escribir Sin Saltar " ", espacio , Tablero_Ajedrez[i,j]," ";
			
		FinPara
		Escribir "";
		FinPara
		
	SiNo
		Escribir  "Digite valores positivos enteros"
	FinSi
	
	
	
FinAlgoritmo
