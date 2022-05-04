programa
{
	
	funcao inicio(){
		// exercicio1()
		// exercicio2()
		exercicio3()
	}
	funcao exercicio1() {	inteiro matriz[2][2]

		matriz[0][1] = 10
		matriz[1][1] = 5
		matriz[1][0] = 4
		matriz[0][0] = 7


		//estamos percorrendo as linhas e colunas como esta sendo informado
		//lembrar sempre de alterar a variavel incrementadora dos dois laços
		//primeiro as linhas, depois as colunas
		para(inteiro linha=0; linha < 2; linha++){
			
			//percorre colunas
			para(inteiro coluna=0; coluna < 2; coluna++){
				escreva(matriz[linha][coluna], "   ")
			}
		}
	}

	funcao exercicio2() {	cadeia alunos[] = {"João", "Pedro", "Angelin"}
		
		real notas[3][3] = {
			{7.0, 7.0, 7.0},
			{6.7, 8.7, 7.7},
			{1.0, 2.0, 3.0} 
		}
		
		real medias[3]

		para(inteiro linha=0; linha < 3; linha++) {
			real soma=0.0
			para(inteiro i=0; i < 3; i++) {

				soma += notas[linha][i]
			}
			medias[linha] = soma / 3
		}
		escreva(" a média das 3 notas dos 3 alunos é ", medias[0],"\n", medias[1],"\n", medias[2])
	}

	funcao exercicio3() {
		inteiro numeros[2][2]

		para(inteiro l=0; l < 2; l++){
				
			para(inteiro c=0; c < 2; c++){
				escreva("digite um numero: ")
				leia(numeros[l][c])
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1031; 
 * @DOBRAMENTO-CODIGO = [8, 28, 49];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 51, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */