programa {
	
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
		real atletas[10], media=0.0

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
		inteiro vetor[10], vetorimpar[10], numero=0, contador=0, contador1=0

		enquanto(contador + contador1 < 10) {

			escreva("digite um numero: ")
			leia(numero)
			limpa()
		
			se(numero % 2 == 0) {
				vetor[contador] = numero
				contador++
			}

			senao {
				vetorimpar[contador1] = numero
				contador1++
			}
		}

		listapar(vetor, contador)
		listaimpar(vetorimpar, contador1)
	}
	funcao listapar(inteiro vetor[], inteiro contador) {
			inteiro copia=0
			
			para(inteiro t=0; t < contador; t++){
				para(inteiro i=0; i < contador - 1; i++){
					se(vetor[i] < vetor[i+1]) {
						copia = vetor[i]
						vetor[i] = vetor[i+1]
						vetor[i+1] = copia
					}
				}
			}
			
			para(inteiro i=0; i < contador; i++){
				escreva(" ", vetor[i], " ")
			}
	}
	funcao listaimpar(inteiro vetorimpar[], inteiro contador1) {
			inteiro copia=0
			
			para(inteiro g=0; g < contador1; g++){
				para(inteiro i=0; i < contador1-1; i++){
					se(vetorimpar[i] > vetorimpar[i+1]) {
						copia = vetorimpar[i]
						vetorimpar[i] = vetorimpar[i+1]
						vetorimpar[i+1] = copia
					}
				}
			}

			para(inteiro i=0; i < contador1; i++){
			escreva("  ",vetorimpar[i], "  ")

			}
	}

	funcao exercicio9() {
		cadeia vetor[10], nomes
		inteiro contador=0

		vetor[0] = "Renatinho"
		vetor[1] = "Renatou"
		vetor[2] = "Renatei"
		vetor[3] = "Renataras"
		vetor[4] = "Renatado"
		vetor[5] = "Renatão"
		vetor[6] = "Renatóte"
		vetor[7] = "Renatéte"
		vetor[8] = "Renatuilli"
		vetor[9] = "Renato"

		escreva("digite um nome que esteja relacionado com Renato:  ")
		leia(nomes) 
		
		para(inteiro i=0; i < 10; i++){
			se(nomes == vetor[i]) {

			contador ++
			
			}
		}

		se( contador !=  0) {
			escreva("achei")
		}

		senao {
			escreva("não achei")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 201; 
 * @DOBRAMENTO-CODIGO = [16, 25, 41, 57, 70, 89, 101, 137, 131, 128, 151, 168, 187];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */