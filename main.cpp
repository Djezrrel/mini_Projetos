#include <iostream>
#include <math.h>
#include <stdio.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char** argv) {
	
	char nome;
	int idade;
	int numero, resultado,raiz;
	
	
	printf("Digite seu nome: ");
	scanf("%s",&nome);
	
	printf("Digite sua idade: ");
	scanf("%d",&idade);
	
	
	printf("\nsua nome e %s",&nome);
	printf("\nsua idade e %d",idade);
	
	
	
	if(idade >= 18){
		printf("\nvoce e maior de idade");
	}
	else{
		printf("\nvoce e menor de idade");
	}
	
	
	
	
	printf("\ndigite seu numero para potenciar:  ");
	scanf("%d",&numero);	
	
	resultado = pow(numero,2);
	raiz = sqrt(numero);
	
	printf("Potencia = %d \n",resultado);
	printf("Raiz = %d \n",raiz);
	
	/* neste portifolio comecei dando os valores para as variaveis e que tipos elas seriam, dei um valor de entrada
	para a pessoa digitar seu nome,idade e numero para potenciar e fazer a raize com scanf para armazenar o valor de entrada
	e logo apos fiz esse valor de entrada mostrar para a pessoa pelo printf,entao criei uma condicao para a idade usando IF/Else caso a idade nao seja atendida ia mostrar
	uma mensagem que esta dentro da condição com (printf) se caso for atendinda ira ter a condicao estabelecida,logo apos fiz o numero para potenciar com a funcao math
	que tem essa propriedade, assim como as outras coloquei para da um numero de entrada e armazenar para mostra-lo logo apos a funcao
	pow(base,expoente) ser usada.Aproveitei e criei uma varivel raiz que tem as mesmas caracteristicas das outras e da mesma forma so que ia falar a raiz
	do numero de entrada..DAVID JEZRREL.
	
	
	
	return 0;
}
