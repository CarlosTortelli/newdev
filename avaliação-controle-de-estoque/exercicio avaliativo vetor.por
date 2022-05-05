programa {
	funcao inicio() {
		inteiro 
			opcao=0, 
			contaVeiculo=0,  
			movEntrada[1000], 
			movSaida[1000],
			carroSelecionado,
			quantidadeSelecionada,
			saldoDoVeiculo=0
		cadeia cadastroVeiculos[1000]

		enquanto(opcao != 6) {

			se(opcao >= 6) {
				escreva("Não existe essa opção!")
			}
			escreva("\n 1) Cadastrar veículo")
			escreva("\n 2) Listar veículos")
			escreva("\n 3) Movimentacao de entrada ")
			escreva("\n 4) Movimentação de saída")
			escreva("\n 5) Mostar Saldo veículo ")
			escreva("\n 6) Sair \n")
			escreva("\n Digite a operação desejada: ")
			leia(opcao)
			limpa()
			
			escolha(opcao) {
				
				caso 1:
					escreva("Digite o nome do veículo: ")
					leia(cadastroVeiculos[contaVeiculo])
	
					contaVeiculo++
					pare
					
				
				caso 2:				
					listarVeiculos(cadastroVeiculos, contaVeiculo)
					pare
					
				
				caso 3:
					listarVeiculos(cadastroVeiculos, contaVeiculo)

					escreva("Seleciona o veículo pelo número de identificação: ")
					leia(carroSelecionado)

					se(carroSelecionado > contaVeiculo) {
						escreva("\neste código não existe, não é possivel adicionar um saldo para tal")
						pare
					}
						
					escreva("Valor de entrada (Números inteiros, ex: 1, 3, 4...) : ")
					leia(quantidadeSelecionada)
							
					se(quantidadeSelecionada >= 200){ 
						escreva("\nNão possuímos estoque para esta quantidade")
						pare
					}
					movEntrada[carroSelecionado] += quantidadeSelecionada
					pare

					
				caso 4: 
					listarVeiculos(cadastroVeiculos, contaVeiculo)

					escreva("Seleciona o veículo pelo número de identificação: ")
					leia(carroSelecionado)

					
					se(carroSelecionado > contaVeiculo) {
						escreva("\neste código não existe, não é possivel adicionar um saldo para tal")
						pare
					}

					escreva("Valor de saída (Números inteiros, ex: 1, 2, 3,...) : ")
					leia(quantidadeSelecionada)

					se(quantidadeSelecionada > movEntrada[carroSelecionado] - movSaida[carroSelecionado]){ 
						escreva("\n Com este número o estoque ficará negativo, então retire um valor válido!")
						pare
					}
					
					movSaida[carroSelecionado] +=  quantidadeSelecionada
					pare

					
				caso 5:
					listarVeiculos(cadastroVeiculos, contaVeiculo)

					escreva("Seleciona o veículo pelo número de identificação: ")
					leia(carroSelecionado)

					
					saldoDoVeiculo = movEntrada[carroSelecionado] - movSaida[carroSelecionado]
					
					escreva("O saldo do veiculo: ", cadastroVeiculos[carroSelecionado], " é : ", saldoDoVeiculo)
					pare
			}
		}
	}

	funcao listarVeiculos(cadeia cadastroVeiculos[], inteiro contaVeiculo) {
		para(inteiro i=0; i < contaVeiculo; i++) {	
			escreva(" ", i, ") ", cadastroVeiculos[i], "\n")
		}
		escreva("\n -------------------- \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1958; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */