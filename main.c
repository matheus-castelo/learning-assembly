int main(){
    register int num1 = 30; /* EAX = 30. Estamos dizendo que esse 30 que tem 4 bytes,
    vai ser colocado num registrador (ao invés de guardar só na memória)* O compilador
    sempre tenta colocar num registrador, mas podemos forçar utilizando a palavra 
    register */
    register int num2 = 70;
    register int num3 = 99;
    int soma = num1 + num2;
    int subtracao = soma - num3;
    return 0;
}