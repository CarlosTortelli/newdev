programa
{
	
	funcao inicio()
 {
 	// exercicio7()
 	banana()
	}

		 funcao exercicio1() {
		 	inteiro somatoria= 0,valores = 0, media = 0, numero = 10
		 	   
		enquanto(numero >= 0){
		 	   escreva("digite um numero: \n")
		 	   leia(numero)

		 	   somatoria = somatoria + numero 
		 	   valores++
		 	   }
		 	   
		 	   media = somatoria / valores

				escreva("o numero de valores inseridos foi: ", valores, "\n")
				escreva("a somatória é: ", somatoria, "\n")
				escreva("a média dos valores é: ", media, "\n") 
		 	   
		 }
		 funcao exercicio2() {
		 	inteiro altura, maioraltura = 0, menoraltura = 3423, numero3 = 0

		 enquanto(numero3 <= 14){
		 	 escreva("\ndigite sua altura: ")
		 	 leia(altura)
		 	 
		 	 numero3 = numero3 + 1

		 	 se(altura < menoraltura){
		 	 menoraltura = altura
		
		 }
		 	 se(altura > maioraltura){
		 	 maioraltura = altura
	 		}
   		}
   		escreva("\n a maior altura é: ", maioraltura)
   		escreva("\n a menor altura é: ", menoraltura)
	}

		funcao exercicio3() {
			inteiro numero = 0

			escreva("\n digite um numero: ")
			leia(numero) 
			
		enquanto(numero <= 100){
			numero = numero * 3
			escreva("\n o resultado multiplicado por 3 é igual a: ", numero)
		}
	}

		funcao exercicio4() {
			inteiro z = 0

		faca {
				z += 5
					escreva(z, "\n")

		}
		enquanto (z < 300)

		faca {	
				z += 3
					escreva(z, "\n")
		}
		enquanto (z >= 300 e z <= 400)

		faca {
				z += 5
				escreva(z, "\n")
		}
		enquanto (z >= 400 e z <= 500)
		}


		funcao exercicio5() {
			inteiro numero, contador


			escreva("digite um numero: ")
			leia(numero)
			contador = numero - 1

		faca {
			numero = numero * contador
			escreva(numero, "\n")
			contador--
		}
		enquanto (numero >= 1)
		}

		
	funcao exercicio6() {
		inteiro numero, contador = 0, soma = 0

		escreva("\n digite um numero: ")
		leia(numero)
		
		faca {

			soma = soma + contador
			escreva(soma, "\n")
			contador++
	
		}
		enquanto(contador <= numero)
}

	funcao exercicio7() {
		inteiro numerohab, media1 = 0, media2 = 0 , salario, numerofilho, maiorsalario = 0, acima100

		escreva("\n digite o numero de habitantes: ")
		leia(numerohab)
		
		para (numerohab = 1; numerohab <= 20; numerohab += 1) {

		escreva("\n digite seu salario :")
		leia(salario)
		escreva("\n digite o numero de filhos que você possui: ")
		leia(numerofilho)

		media1 = salario / 20
		media2 = numerofilho / 20 
		
		se( salario > maiorsalario){
		salario = maiorsalario}}
		
		
			escreva("\n a média entre os salarios é ", media1)
			escreva("\n a média entre o numero de filhos é ", media2)
			escreva("\n o maior salario entre as familias é ", maiorsalario)
		
	}


	funcao banana() {
		real mediaSalario=0.0, maiorSalario=0.0, salario=0.0, acumuladorSalario = 0.0
		inteiro mediaNumeroFilhos=0, numeroDeHabitantes=2, numFilho=0, acumuladorFilhos=0	
		

		para(inteiro i=0; i < numeroDeHabitantes; i++) {

			escreva("\n digite seu salario :")
			leia(salario)
			escreva("\n digite o numero de filhos que você possui: ")
			leia(numFilho)


			se (salario > maiorSalario) {
				maiorSalario = salario
			}
			
			acumuladorSalario += salario	
			acumuladorFilhos += numFilho
		}

		escreva("\n a média entre os salarios é ", acumuladorSalario / numeroDeHabitantes)
		escreva("\n a média entre o numero de filhos é ", acumuladorFilhos / numeroDeHabitantes)
		escreva("\n o maior salario entre as familias é ", maiorSalario)
	}
	
}




/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */