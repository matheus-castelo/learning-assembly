%INCLUDE "io.inc"
SECTION .data
num1 DD 30
num2 DD 70
num3 DD 99
soma DD 00
subtracao DD 00

SECTION .text
GLOBAL main
main:
    MOV EAX, [num1]
    MOV EBX, [num2]
    MOV ECX, [num3]
; Implementando expressão     int soma = ((num1+num2) - num3)+num1;
    ADD EAX, EBX 
    SUB EAX, ECX
    ADD EAX,[num1]
    MOV [soma], EAX ; Armazena o resultado da soma na variável soma 
    PRINT_UDEC 4, EAX ; Exibe o resultado da expressão 
    MOV EAX, 0
    RET
