SECTION .data ; Dados
    ; Aqui você pode definir variáveis e constantes, se necessário
num1 DD 30
num2 DD 70
num3 DD 99
soma DD 00
subtracao DD 00
; DD = Define double word (4 bytes)

SECTION .text ; Instruções
GLOBAL main ; Avisando para o Kernel que tem uma função  main. O SO ele começa a executar o código a partir dessa função.
main: ; Início da função main
    MOV EAX, [num1] ; Movendo da memória para o registrador
    MOV EBX, [num2] ; Movendo da memória para o registrador
    MOV ECX, [num3] ;  Movendo da memória para o registrador
    MOV EAX, 0 ; Retorna o valor de EAX
    ADD EAX, EBX ; Soma o valor de EAX com o valor de EBX. num1 = num1 + num2
    MOV [soma], EAX ; Armazena o resultado da soma na variável soma. DESTINO, ORIGEM
    SUB EAX , ECX ; Subtrai o valor de EAX com o valor de ECX. soma = soma - num3.
    MOV [subtracao], EAX ; Armazena o resultado da subtração na variável subtracao.
    RET ; Retorna para o Kernel
