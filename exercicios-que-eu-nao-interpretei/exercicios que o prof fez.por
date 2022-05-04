programa
{
	
	funcao inicio() {
		
		
		inteiro 
			opcao=0, 
			contaVeiculo=0, 
			contaEntrada=0, 
			contaSaida=0, 
			movEntrada[1000], 
			movSaida[1000], 
			qualVeiculo, 
			quantidade
		cadeia cadastroVeiculos[1000]

		enquanto(opcao != 8) {
			escreva("\n 1) cadastrar veículo")
			escreva("\n 2) listar veículos")
			escreva("\n 3) movimentacao de entrada ")
			escreva("\n 4) retirar veículo")
			escreva("\n 5) movimentação de saída")
			escreva("\n 6) listar saldo veículo ")
			escreva("\n 7) mostrar numero de estoque")
			escreva("\n 8) sair \n")
			leia(opcao)
			limpa()
		escolha(opcao) {
			caso 1:
				escreva("Digite o nome do veículo: ")
				leia(cadastroVeiculos[contaVeiculo])
				contaVeiculo++				
				pare
			caso 2:
				listaVeiculos(contaVeiculo, cadastroVeiculos)
				pare
			caso 3: 
				listaVeiculos(contaVeiculo, cadastroVeiculos)

				escreva("Digite qual veículo: ")
				leia(qualVeiculo)

				escreva("Digite a quantidade de entrada: ")

				leia(quantidade)

				movEntrada[qualVeiculo] += quantidade			
				pare
			caso 4: 
				escreva("digite o código do veículo que deseja retirar e ele será removido: ")
				leia(cadastroVeiculos[contaSaida])
				cadastroVeiculos[contaSaida] = " "
				contaSaida++	
				pare
			caso 5:
				     escreva("a movimentação de saída é: ", contaSaida)
				pare
			caso 6: 
				listaVeiculos(contaVeiculo, cadastroVeiculos)

				leia(qualVeiculo)

				escreva("O saldo do veículo é: ", movEntrada[qualVeiculo])
				
				pare
			caso 7:

					
				pare
		}

		}
	}

	funcao listaVeiculos(inteiro contaVeiculo, cadeia cadastroVeiculos[]){
		para(inteiro i=0; i < contaVeiculo; i++) {
			escreva(" ", i ,")", cadastroVeiculos[i], "\n")
		}
	}
}
		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 997; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */