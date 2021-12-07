/*
  Title: Prácticas Capítulo 2 del cuadernillo de "Prácticas de ASM RaspberryPi
  Filename: practica 1.s
  Autor: Manuel Reyes Ojeda
  Date: 06/12/2021
  Description: Ciclos en Arm Assembly
  Output: "5"
*/
.text
.global _start

_start:
        mov     r1, #1 //Le asignamos el valor de 1 al registro 1
        mov     r2, #5 //Le asignamos el valor de 5 al registro 2
        b       bucle  //Se hace la llamada al bucle
bucle:
        cmp     r1, r2 //Comparación entre el registro 1 y 2
        bhi     salir  //Sentencia de salida en caso de igualdad
        mov     r0, r1 //Proyección de resultados
        add     r1, r1, # 1 //Incremento del bucle
        b       bucle //Recursividad
salir:
        mov     r7, #1 //Sentencia de salida
        svc     0