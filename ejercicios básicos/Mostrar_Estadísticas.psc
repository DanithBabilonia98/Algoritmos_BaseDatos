Proceso Mostrar_Estadísticas
	Definir pg, pp, pe, puntos, total_partidos Como Entero
	
	Escribir  'Ingrese cuantos partidos ha ganado : '
	Leer pg
	
	Escribir 'Ingrese cuantos partidos empató : '
	Leer pe
	
	Escribir 'Ingrese cuantos partidos perdió : '
	Leer  pp
	
	puntos <- ((pg *3)+(pe ))
	
	Escribir 'El último partido fue 1. ganado, 2. perdido, 3. empatado : '
	Leer ultimo
	Si ultimo = "1" Entonces
		puntos <- puntos + 3
		pg<-pg+1
	si ultimo = "2"
			puntos <- puntos
			pp<-pp+1
		FinSi
		si ultimo = "3" Entonces
			puntos <- puntos + 1
			pe<-pe+1
		FinSi
	FinSi
	total_partidos <- (pp + pe + pg) 
	
	Escribir 'El total de puntos de ', puntos
	Escribir 'Partidos ganados :  ', pg
	Escribir 'Partidos perdidos :', pp
	Escribir  'Partidos empatados :  ', pe
	Escribir 'El total de partidos es : ', total_partidos
	
FinProceso

	