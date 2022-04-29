programa {
	
	funcao inicio()
	{
	   // exercicio1()
	   // exercicio2()
	   // exercicio3()
	   // exercicio4()
	   // exercicio5()
	   // exercicio6()
	   // exercicio7()
	    exercicio8()
	   // exercicio9()
	   // exercicio10()
	}

	funcao exercicio1() {
		inteiro serie[50]
			serie[0]=1
			para(inteiro i=1; i < 40; i++){
				serie[i+1] = serie[i] + serie[i-1]
				escreva(serie[i], "\n")
			}
	}
	
	funcao exercicio2() {
		inteiro numeros[101], contador=0

		para(inteiro i=0; i < 101; i++){
			contador++
			
			se(contador % 2 == 0){
			numeros[i] = contador
			}
			
			se(numeros[i] != 0) {
				escreva(numeros[i], "\n")
			}
		}	
	}

	funcao exercicio3() {
		inteiro numeros[100], contador=0

		para(inteiro i=0; i < 100; i++){
			contador++
			
			se(contador % 2 != 0){
			numeros[i] = contador
			}
			
			se(numeros[i] != 0) {
				escreva(numeros[i], "\n")
			}
		}	
	}

	funcao exercicio4() {
		inteiro numero[10]

		para(inteiro i=0; i < 10; i++){
			escreva("digite um numero: ")
			leia(numero[i])
			numero[i] = numero[i] * numero[i] * numero[i]
		}
		para(inteiro i=0; i < 10; i++){
			escreva("\n estes numeros ao cubo ficam ", numero[i])
		}
	}

	funcao exercicio5() {
		real atletas[10], media=0

		para(inteiro i=0; i < 10; i++){
			escreva("digite um atleta:\n")
			leia(atletas[i])
		     limpa()
		     media += atletas[i]
		}
		
		media /= 10
		
		para(inteiro i=0; i < 10; i++){
		     se(atletas[i] > media) {
		     escreva("a média de altura dos atletas é ", media, "e os atletas acima da média tem a altura de ", atletas[i], "\n")
		     }
		}		
	}

	funcao exercicio6() {
		inteiro vetor[10]

		para(inteiro i=0; i < 10; i++){
			escreva("digite um numero: ")
			leia(vetor[i])
		}
		para(inteiro i=9; -1 < i; i--){
			escreva(vetor[i], "\n")
		}
	}

	funcao exercicio7() {
		inteiro vetor[10], vetorb[10]

		para(inteiro i=0; i < 10; i++){
			escreva("digite um número inteiro e positivo ")
			leia(vetor[i])
			limpa()
			
			se(vetor[i] <= 0) {
				pare
			}

			se(vetor[i] % 2 == 0) {
				vetorb[i] = vetor[i] / 2
			}

			senao {
				vetorb[i] = vetor[i] * 3
			}
		}

		para(inteiro i=0; i < 10; i++){
		
		escreva("o par dividido por 2 e/ou o impar dividido por 3 ficam: ", vetorb[i], "\n")
		}
	}

	funcao exercicio8() {
		inteiro vetor[10], vetorA[10], contador=0, contador1=0

		para(inteiro i=0; i < 10; i++){
			escreva("digite um numero: ")
			leia(vetor[i])
			limpa()
		}
		
		para(inteiro i=0; i < 10; i++){
			se(vetor[i] % 2 == 0 ) {
				se(vetorA[contador] == 0) {
					vetorA[contador] = vetor[i]	
					contador++
					}
				}
	     }
	     
		para(inteiro i=0; i < 10; i++){
			se(vetor[i] % 2 != 0 ) {
				se(vetorA[contador] == 0) {
					vetorA[contador] = vetor[i]	
					contador++
				}
			}
		}

		para(inteiro a=0; a < 10; a++){

			para(inteiro i=0; i < 10; i++){
				se(vetorA[contador] < vetorA[contador1]) {
				vetorA[contador1] = vetorA[i]
				contador1++
				}
			}
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2931; 
 * @DOBRAMENTO-CODIGO = [25, 41, 57, 70, 101];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorA, 130, 21, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */