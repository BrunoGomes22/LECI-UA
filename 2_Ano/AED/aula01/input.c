#include<stdio.h>

int main(void){
	char nome[10];
	puts("Qual o teu nome?");
	fgets(nome,10,stdin);
	printf("%s\n",nome);
	return 0;
}
