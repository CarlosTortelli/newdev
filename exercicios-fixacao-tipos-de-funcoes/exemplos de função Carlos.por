programa
{
	
	funcao inicio()
	{
	 
	 exemploprofessor()
	 exercicio1()
	 exercicio2()
	 exercicio3()
	 exercicio4()
	
	}

	funcao exemploprofessor(){

		cadeia concatenado = concatenar(
			1,
			2

		)
		escreva("----------------", concatenado)
	}
	funcao cadeia concatenar( inteiro parametro1, inteiro parametro2) {

		se(parametro1 == parametro2) {
		   retorne "são iguais"
		}

		retorne parametro1 + " " + parametro2
	}
	
	//na primeira função estão os nomes que o indivíduo terá de informar e depois irá escrever um informativo vom o nome
	//completo, que será montado na subordinada abaixo utilizando como parâmetros os nomes que o indivíduo informou
	
	funcao exercicio1(){
	cadeia nome, sobrenome

		escreva("digite o nome de um piloto: \n")
			leia(nome)
		escreva("digite o sobrenome um piloto: \n")
			leia(sobrenome)
		
		escreva("nome completo ", nomecompleto(nome, sobrenome))
	}
	funcao  cadeia nomecompleto(cadeia nome, cadeia sobrenome) { 
				
			retorne nome + " " + sobrenome	
	}

	//na função principal eu escrevi um informativo e declarei a variavel da função subordinada, adicionando seus valores também
	//na função subordinada eu declaro ela inteira e eu realizo a soma dos parâmetros
	
	funcao exercicio2(){
	 
	  escreva("a soma dos valores 10 e 15 é: ", soma(10, 15))
	}
	funcao inteiro soma(inteiro n1, inteiro n2) {

			retorne n1 + n2
	}

	//na primeira função foi informado a velocidade de dois carros e a média, usando a conta da segunda função
	//que consequentemente divide os 2 parâmetros e dá a média
	
	funcao exercicio3(){

		escreva(" as respectivas velocidades de reta de 2 carros são 319.5 e 303.7 e a média das duas é: ", media(319.5, 303.7))		
	}
	funcao real media(real v1, real v2) {

		retorne (v1 + v2) / 2
	}

	//na primeira função foi pedido para informar 3 numeros e dados os parâmetros, a função subordinada informou eles respectivamente
	funcao exercicio4(){

		escreva("INFORME 3 NÚMEROS AGORA!!!!\n")

		vazia(121, 3442, 23412353)
	}
	funcao vazia(inteiro n1, inteiro n2, inteiro n3) {

		escreva(n1," ", n2," ", n3, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 38; 
 * @DOBRAMENTO-CODIGO = [14, 25, 23, 35, 45, 53, 57, 65, 69, 75, 81];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */