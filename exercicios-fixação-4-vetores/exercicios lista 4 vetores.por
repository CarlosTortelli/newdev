programa
{	
	funcao inicio()
	{
		exercicio1()
		exercicio2()
		exercicio3()
		exercicio4()
		exercicio5()
		exercicio6()
		exercicio7()
		exercicio8()
		exercicio9()
   		exercicio10()
	}
	funcao exercicio1() {
		inteiro numeros[5], divisor=2
		

		para(inteiro i=0; i < 5; i++){

			escreva("digite um número: ")
			leia(numeros[i])
		}

		para(inteiro i=0; i < 5; i++){

			divisor=2
			enquanto(numeros[i] % divisor != 0 ) {
				se(numeros[i] == 1) {
					pare
				}
				divisor++ 
			}
			
			se(divisor == numeros[i]) {
				escreva(numeros[i], " é primo \n")	
			}
		}
	}
	
	funcao exercicio2() {
		inteiro numeros[8], maiorposicao=0

			para(inteiro i=0; i < 8; i++){
				
				escreva("digite um número: ")
				leia(numeros[i])

			se(numeros[maiorposicao] < numeros[i])

			maiorposicao = i
			
			}
			
			escreva("\\n o maior numero se encontra no slot ) ", maiorposicao , "\n e o maior numero da ssequencia é: ", numeros[maiorposicao] )
	}

	funcao exercicio3() {
		inteiro numeros[10], pares=1, impares=0


			para(inteiro i=0; i < 10; i++){

				escreva("digite um número: ")
				leia(numeros[i])

				se(numeros[i] % 2 == 0) {	
					pares *= numeros[i]
				}
				senao{
					impares += numeros[i]
				}
			}
				escreva("a multiplicação dos pares é: ", pares, " a soma dos impares é: ", impares)
	}
	
	funcao exercicio4() {
		inteiro numero[5], inversao[5]

			para(inteiro i=0; i < 5; i++){
				escreva("digite um número: ")
				leia(numero[i])
		}

		inversao[0] = numero[4]
		inversao[1] = numero[3]
		inversao[2] = numero[2]
		inversao[3] = numero[1]
		inversao[4] = numero[0]

		   	para(inteiro i=0; i < 5; i++){
				escreva(inversao[i], "\n")
		}
	}
	
	funcao exercicio5() {
		inteiro numero[10], numero1=0

			para(inteiro i=0; i < 10; i++){
				escreva("digite um numero ")
				leia(numero[i])
			}
				escreva("digite o divisor ")
				leia(numero1)

			para(inteiro i=0; i < 10; i++){
				se(numero[i] % numero1 == 0) {
					escreva("o numero ", numero[i], " é divisivel")
				}
		}
			
	}
	
	funcao exercicio6() {
		inteiro numero[5], soma=0

			para(inteiro i=0; i < 5; i++){
				escreva("\ndigite um numero: ")
				leia(numero[i])

				soma += numero[i]
			}
				para(inteiro i=0; i < 5; i++){
				
				escreva("\n", i, ") ", numero[i])
		}
		escreva("\n a soma dos números é: ", soma)
	}
	
	funcao exercicio7() {
		cadeia nomes[5]
		limpa()

		para(inteiro i=0; i < 5; i++){
			escreva("digite um nome: ")
			leia(nomes[i])
		}

		para(inteiro i=0; i < 5; i++){
			escreva( i, " )", nomes[i], "\n")
		}
		para(inteiro i=4; i < -1; i--){
			escreva(i, " )", nomes[i], "\n")
		}
	}
	
	funcao exercicio8() {
		inteiro numero=1
		cadeia meses[12]

		meses[0] = "janeiro" meses[1] = "fevereiro" meses[2] = "março" meses[3] = "abril" meses[4] = "maio"
		meses[5] = "junho" meses[6] = "julho" meses[7] = "agosto" meses[8] = "setembro" meses[9] = "outubro" meses[10] = "novembro" meses[11] = "dezembro"

		enquanto(numero != 0) {
			escreva("insira um numero de 1 a 12 ")
			leia(numero)
		

		escolha(numero) {

			caso 0: pare
			
			caso 1: escreva(meses[0], "\n")
			pare
			
			caso 2: escreva(meses[1], "\n")
			pare
			
			caso 3: escreva(meses[2], "\n")
			pare
			
			caso 4: escreva(meses[3], "\n")
			pare
			
			caso 5: escreva(meses[4], "\n")
			pare
			
			caso 6: escreva(meses[5], "\n")
			pare
			
			caso 7: escreva(meses[6], "\n")
			pare
			
			caso 8: escreva(meses[7], "\n")
			pare
			
			caso 9: escreva(meses[8], "\n")
			pare
			
			caso 10: escreva(meses[9], "\n")
			pare
			
			caso 11: escreva(meses[10], "\n")
			pare
			
			caso 12: escreva(meses[11], "\n")
			pare
		}
		}
	}
		
	funcao exercicio9() {
		inteiro inteiros[51], completos=0

			para(inteiro i=0; i < 51; i++){
				inteiros[i] = completos
				completos++
			}
			para(inteiro i=0; i < 51; i++){
			    escreva(inteiros[i], "\n")
			}
		}
	
	funcao exercicio10() {
		inteiro banana[10]

			para(inteiro i=0; i < 10; i++){
				escreva("digite um numero: ")
				leia(banana[i])
			}
			para(inteiro i=0; i < 10; i++){
				escreva( banana[i] * banana[i], "\n")
			}
		}
	}
	
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4088; 
 * @DOBRAMENTO-CODIGO = [15, 41, 58, 77, 96, 114, 130, 147, 202, 214];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */