programa
 {
	
	funcao inicio() {
		cadeia nomejogador[12], ganhou="", matrizjogo[3][3]
		inteiro  possibilidades[9], opcao=0, jogador=1

		escreva(" Bem vindo ao jogo da velha do Carlos!\n", "\nO jogo funciona da seguinte forma: o primeiro a jogar este jogo sempre será o intitulado (X), o (X) anota uma opção de coordenada e o (O) joga logo após o (X)")
		escreva("\nQuem realizar uma linha de 3 X's ou 3 O's em uma mesma direção, em linha reta ou diagonal, vence! Quando ouver um vencedor, será informado se foi o X ou o O")
		escreva("\nEste jogo tem algumas especificidades como escrever um numero qualquer antes de jogar(por motivos secretos) e estar atento as jogadas do inimigo", "\npois se repetir coordenada perderá sua vez")
		escreva("\nEspero que se divirta neste jogo da velha alternativo! Tenha um bom jogo!!;-;")
		escreva("\n\n ------------------------------------------------------------------------------------------------------------------------------------\n\n")
		
		nomejogador[0]="O"
		nomejogador[1]="X"
		nomejogador[2]="O"
		nomejogador[3]="X"
		nomejogador[4]="O"
		nomejogador[5]="X"
		nomejogador[6]="O"
		nomejogador[7]="X"
		nomejogador[8]="O"
		nomejogador[9]="X"
		nomejogador[10]="O"
		nomejogador[11]="X"
		

		
		
		
		para(inteiro l=0; l < 9; l++){
			escreva("\ninicie jogador (X) com qualquer numero inteiro e depois escolha uma opção!  ")
			leia(possibilidades[l])
			limpa()
			
			
		
			escreva("\n escolha uma opção de coordenada: ")
			escreva("\n -------------------------------------------------\n")
			escreva("\n 1) coordenada 0.0  ")
			escreva("\n 2) coordenada 0.1  ")
			escreva("\n 3) coordenada 0.2  ")
			escreva("\n 4) coordenada 1.0  ")
			escreva("\n 5) coordenada 1.1  ")
			escreva("\n 6) coordenada 1.2  ")
			escreva("\n 7) coordenada 2.0  ")
			escreva("\n 8) coordenada 2.1  ")
			escreva("\n 9) coordenada 2.2  ")
			leia(opcao)
			limpa()


			escolha(opcao) {

				caso 1:
					se( matrizjogo[0][0] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[0][0] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[0][0] = nomejogador[jogador]
					}
					pare
				caso 2:
					se( matrizjogo[0][1] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[0][1] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[0][1] = nomejogador[jogador]
					}
					pare
				caso 3:
					se( matrizjogo[0][2] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[0][2] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[0][2] = nomejogador[jogador]
					}
					pare
				caso 4:
					se( matrizjogo[1][0] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[1][0] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[1][0] = nomejogador[jogador]
					}
					pare
				caso 5:
					se( matrizjogo[1][1] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[1][1] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[1][1] = nomejogador[jogador]
					}
					pare
				caso 6:
					se( matrizjogo[1][2] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[1][2] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[1][2] = nomejogador[jogador]
					}
					pare
				caso 7:
					se( matrizjogo[2][0] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[2][0] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[2][0] = nomejogador[jogador]
					}
					pare
				caso 8:
					se( matrizjogo[2][1] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[2][1] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {
						matrizjogo[2][1] = nomejogador[jogador]
					}
					pare
				caso 9:
					se( matrizjogo[2][2] == "O") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					se(matrizjogo[2][2] == "X") {
						escreva("Espaço ocupado, por favor escolha outro!")
						pare
					}
					senao {	
						matrizjogo[2][2] = nomejogador[jogador]
					}
					pare		
			}


			se(possibilidades[l] % 2 == 0) {
				nomejogador[0] = "O"
				jogador ++
			}
			senao{
				nomejogador[1] = "X"
				jogador ++
			}


			se(matrizjogo[0][0] == "X" e matrizjogo[0][1] == "X" e matrizjogo[0][2] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[1][0] == "X" e matrizjogo[1][1] == "X" e matrizjogo[1][2] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[2][0] == "X" e matrizjogo[2][1] == "X" e matrizjogo[2][2] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[0][0] == "X" e matrizjogo[1][0] == "X" e matrizjogo[2][0] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[0][1] == "X" e matrizjogo[1][1] == "X" e matrizjogo[2][1] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[0][2] == "X" e matrizjogo[1][2] == "X" e matrizjogo[2][2] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[0][0] == "X" e matrizjogo[1][1] == "X" e matrizjogo[2][2] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[2][0] == "X" e matrizjogo[1][1] == "X" e matrizjogo[0][2] == "X") {
				escreva("O jogador (X) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[0][0] == "O" e matrizjogo[0][1] == "O" e matrizjogo[0][2] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[1][0] == "O" e matrizjogo[1][1] == "O" e matrizjogo[1][2] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[2][0] == "O" e matrizjogo[2][1] == "O" e matrizjogo[2][2] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[0][0] == "O" e matrizjogo[1][0] == "O" e matrizjogo[2][0] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[1][0] == "O" e matrizjogo[1][1] == "O" e matrizjogo[1][2] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[2][0] == "O" e matrizjogo[2][1] == "O" e matrizjogo[2][2] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[0][0] == "O" e matrizjogo[1][1] == "O" e matrizjogo[2][2] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
			senao se(matrizjogo[2][0] == "O" e matrizjogo[1][1] == "O" e matrizjogo[0][2] == "O") {
				escreva("O jogador (O) ganhou a partida!")
				pare
			}
		}		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1278; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomejogador, 5, 9, 11}-{matrizjogo, 5, 37, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */