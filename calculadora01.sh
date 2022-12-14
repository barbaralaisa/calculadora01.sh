#!/bin/bash

#!/bin/bash
###################################################################################
# Calculadora                                                                     #    
# Autores: Bárbara Karoline e Laisa Maria                                     #  
#       08/12/2022                                                                #
# versão 1                                                                        #                                                                              #
###################################################################################
# A opção escolhidada é referente a operação respectiva

echo "Escolha uma opção:"
echo "1 - adiçao "
echo "2 - subtraçao "
echo "3 - Multiplicaçao"
echo "4 - Dividisao "
echo "5 - radiciaçao"
echo "6 - potenciaçao "

read equacao
echo "digite um numero"
  read num1
echo "digite outro numero"
  read num2

function somar(){ # funcão somar soma a variável num1 e num2 tem valor escolhido pelo usuário
	resultado=$(($num1+$num2))
	echo $resultado
}

function subtrair(){ # função subtrair subtrai a variável num1 e num2 tem valor escolhido pelo usuário
	resultado=$(($num1-$num2))
	echo $resultado
}

function multiplicar(){ # função a multiplicar faz a multiplicação da variável num1 e num2 que tem valor escolhido pelo usuário
	resultado=$(($num1*$num2))
	echo $resultado
}

function dividir(){ # função dividir faz a divisão da variável num1 e num2 que tem valor escolhido pelo usuário
	resultado=$(($num1/$num2))
	echo $resultado
}

function raiz(){ # A função raiz faz a raiz da variável num1 e num2 que tem valor escolhido pelo usuário
	resultado=$((sqrt$num1))
	echo $resultado
}

function potencia(){ # função potencia faz a potenciação da variável num1 pelo num2 que tem valor escolhido pelo usuário
	reultado=$(($num1**$num2))
	echo $resultado
}

if [ $equacao -eq 1 ]; then
  #resultado=$[num1+num2]
  resultado=$( somar num1 num2 )
elif [ $equacao -eq 2 ]; then
  resultado=$( subtrair num1 num2 )
elif [ $equacao -eq 3 ]; then
  resultado=$( multiplicar num1 num2 )
elif [ $equacao -eq 4 ]; then
  resultado=$( dividir num1 num2 )
elif [ $equacao -eq 5 ]; then
  resultado=$( echo "sqrt($num1)" | bc )
elif [ $equacao -eq 6 ]; then
  resultado=$(potencia num1 num2)

else
  echo "Opção inválida."
fi
echo "O resultado é: $resultado"
