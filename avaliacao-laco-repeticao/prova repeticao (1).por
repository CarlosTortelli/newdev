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
	}
	funcao exercicio1() {
		real contribuicao, contribuicaototal = 0, diferenca = 0, numerocontribuidores = 5.0

		para(inteiro x = 0; x < numerocontribuidores; x++) {

		escreva("\n digite o valor: ")
		leia(contribuicao)

		contribuicaototal += contribuicao

		se(contribuicaototal > 54000)

		diferenca = contribuicaototal - 54000 }

		escreva("\n a contribuição total foi de: ", contribuicaototal, "\n e a diferença para a loja B foi de: ", diferenca)
		}
	funcao exercicio2() {
			real valordacompra = 0.0, valorfinal = 0.0 
			inteiro desconto = 0
				
				escreva("\n digite o valor de sua compra: ")
				leia(valordacompra)
			

			se(valordacompra >= 500) {
				
			 desconto = (valordacompra / 100.0) - 4
			}
			se(desconto > 25) {
			desconto = 25
			}
			valorfinal = valordacompra * (1 - desconto * 0.01)
			
			escreva("\n o valor da compra ficou em: ", valordacompra, "\n com um desconto de: ", desconto, "\n que resulta em um valor final de: ", valorfinal)
		
		
			}
	funcao exercicio3() {
				real preco = 5.0
				inteiro ingressos = 120, x = 11

					para(inteiro p = 0; p < x; p++) {
					escreva("\n a quantia de ingressos será: ", ingressos, "\n se o preço for: ", preco)

					preco -= 0.5
					ingressos += 26
			}
			}
	funcao exercicio4() {
				real valordacompra, precoprazo, precovista, valorcumulativo = 0.0, valorcumulativoprazo = 0.0, ncompras = 5.0
				cadeia formadepagamento

				escreva("\n insira seu valor de compra e se é a prazo ou a vista : ")

				para(inteiro x = 0; x < ncompras; x++) {

				leia(valordacompra)
				leia(formadepagamento)

				se(formadepagamento == "a vista") {
					valorcumulativo += valordacompra }

				senao {
					valorcumulativoprazo += valordacompra
					}
				}
					escreva("\n o valor total a vista é: ", valorcumulativo)
					escreva("\n o valor total a prazo é: ", valorcumulativoprazo * 1.1)
					escreva("\n o valor total da compra será: ", valorcumulativo + (valorcumulativoprazo * 1.1))

					
				}
	funcao exercicio5() {
				real numero, quantidade30_90 = 0

				escreva("\n digite um numero :")

				para(inteiro a = 0; a < 3; a++) {

					leia(numero)

				se(numero >= 30 e numero <= 90) {
					quantidade30_90++
				}
				}
				escreva("\n a quantidade de numeros entre 30 e 90 é: ", quantidade30_90)
				}	
	funcao exercicio6() {
			inteiro idade = 0, cumulativoidade = 0, pessoas = 0

			faca {
					escreva("\n digite sua idade: ")
					leia(idade)
					se(idade == 0) {
				pare
					}

					cumulativoidade += idade
					pessoas++
}
			enquanto( idade >= 0)

			escreva("\n a média entre as idades das pessoas é: ", cumulativoidade / pessoas)
		}
	funcao exercicio7() {
		inteiro numero, numerofinal , tabuada = 1

		escreva("\n digite um numero: ")
		leia(numero)

		faca{ 
			numerofinal = numero * tabuada
			escreva("\n seu numero vezes ", tabuada, " igual a ", numerofinal, "\n")
			tabuada++
		}
		enquanto(tabuada <= 10)
	}	
}
			
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3069; 
 * @DOBRAMENTO-CODIGO = [13, 37, 41, 29, 54, 50, 72, 75, 67, 61, 90, 85, 106, 103, 100, 117];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */