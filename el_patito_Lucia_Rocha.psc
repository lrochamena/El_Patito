// Calcula el promedio de una lista de N datos, permitiendo repetir el cálculo hasta que el usuario lo decida

Algoritmo Promedio_Repetido
	Definir continuar Como Caracter
	
	continuar <- "S" // Empezamos asumiendo que quiere calcular
	
	Mientras continuar = "S" o continuar = "s" Hacer
		
		Escribir "Ingrese la cantidad de datos:"
		Repetir
			Leer n
			Si n <= 0 Entonces
				Escribir "El número debe ser positivo y distinto de cero."
				Escribir "Introduzca un número válido."
			Fin Si
		Hasta Que n > 0
		
		acum <- 0
		
		Para i <- 1 Hasta n Hacer
			Escribir "Ingrese el dato ", i, ":"
			Repetir
				Leer dato
				Si dato < 0 Entonces
					Escribir "El dato debe ser positivo."
					Escribir "Ingrese el dato ", i, ":"
				Fin Si
			Hasta Que dato >= 0
			acum <- acum + dato
		Fin Para
		
		prom <- acum / n
		Escribir "El promedio es: ", prom
		
		// Preguntamos si quiere calcular otro promedio
		Escribir "¿Desea calcular otro promedio? (S/N)"
		Leer continuar
		
	Fin Mientras
	
	Escribir "Programa finalizado."
	
FinAlgoritmo
