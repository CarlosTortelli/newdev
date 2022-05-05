programa {
	
	funcao inicio(){
		cadeia cadastroVeiculos[200]
		inteiro matrizsaldo[3][200], acumulador=0, contaVeiculo=0, contaEntrada=0, contaSaida=0, opcao=0, algumcarro

		enquanto(opcao != 6) {

			se(opcao > 6) {
				escreva("\n Opção inválida")
				pare
			}
			escreva("\n 1) Cadastrar veículo  ")
			escreva("\n 2) Listar veículos  ")
			escreva("\n 3) Movimentacao de entrada  ")
			escreva("\n 4) Movimentação de saída  ")
			escreva("\n 5) Listar saldo veículo  ")
			escreva("\n 6) Sair ")
			leia(opcao)
			limpa()

				
		escolha(opcao) {
			
			caso 1:
				escreva("Digite o nome do veículo:  ")
				leia(cadastroVeiculos[contaVeiculo])
				
				contaVeiculo++
								
				pare
			caso 2:
					para(inteiro i=0; i < contaVeiculo; i++){
						escreva("\n", i, " ) ", cadastroVeiculos[i])
					}
					     
					     escreva("\n------------------------")
				pare
			caso 3:
					para(inteiro i=0; i < contaVeiculo; i++){
						escreva("\n", i, " )", cadastroVeiculos[i])
					}
					escreva("\n Digite um código para adicionar um saldo:  ")
					leia(algumcarro)
					
					se(algumcarro > contaVeiculo) {
						escreva("\n Este código é inválido!")
						pare
					}

					escreva("\n Quanto saldo deseja adicionar neste veículo?  ")
					leia(contaEntrada)


					
					se(matrizsaldo[0][acumulador] + contaEntrada < 200) {
						para(inteiro i=0; i < 200; i++){
								
							acumulador += matrizsaldo[0][i]
						}
					}

					senao{
						escreva("\n Este valor ultrapassa nossa capacidade de estoque, escreva outro por favor! ")
						pare	
					}

					matrizsaldo[0][algumcarro] += contaEntrada
				
				pare
			caso 4: 
						para(inteiro i=0; i < contaVeiculo; i++){
						escreva("\n", i, " )", cadastroVeiculos[i])
					}
					escreva("\n Digite um código para remover um saldo: ")
					leia(algumcarro)
					

					escreva("\n Quanto saldo deseja remover neste veículo?  ")
					leia(contaSaida)

					
					matrizsaldo[1][algumcarro] += contaSaida
				pare
			caso 5: 
				    escreva("\n Digite o código de um veículo para consultar seu saldo: ")
				    leia(algumcarro)

				    escreva("\n O saldo deste veículo é:  ", matrizsaldo[0][algumcarro] - matrizsaldo[1][algumcarro])
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
 * @POSICAO-CURSOR = 843; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizsaldo, 5, 10, 11}-{acumulador, 5, 31, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */