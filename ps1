SubProceso res <- factorial (numero)
	res = numero;
	numero = numero-1;
	Mientras numero>0 Hacer
		res = res*numero;
		numero=numero-1;
	Fin Mientras
Fin SubProceso

Proceso seno_de_un_angulo
	Definir x, resultado Como Real;
	Definir i, n Como Entero;
	i=1;
	resultado=0;
	Escribir "Este programa da una aproximación del seno de un ángulo usando la serie de Maclaurin.";
	Escribir "Escriba el ángulo (en radianes): ";
	Leer x;
	Escribir "Indique con cuántos términos de la serie de Maclaurin quiere realizar la aproximación (recuerde que a mayor cantidad de términos obtendremos una mejor aproximación): ";
	Leer n;
	Si n<=0 Entonces
		Escribir "Error al asignar el número de términos: no se puede realizar la aproximación con un número negativo de términos ni con cero términos.";
	FinSi
	Si n>0 Entonces
		resultado = resultado + x;
		i=i+1;
		Mientras i<=n Hacer
			resultado = resultado + ((-1)^(i-1))*((x^((2*i)-1))/factorial((2*i)-1));
			i=i+1;
		Fin Mientras
		Escribir "El seno de ", x, " se aproxima a ", resultado, " al usar ", n, " términos en la aproximación usando la serie de Maclaurin.";
	FinSi
	
FinProceso
