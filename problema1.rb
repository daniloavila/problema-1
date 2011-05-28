# = O Problema
# A seguinte sequência iterativa é definida pelo conjunto de inteiros positivos onde:
# n -> n/2 (se n é par) n -> 3n + 1 (se n é impar)
# Usando as regras acima e começando pelo numero 13, nós gerariamos a seguinte sequencia:
# 13 40 20 10 5 16 8 4 2 1
# O que pode ser observado dessa sequência (começando no 13 e terminando no 1) é que ela contem 10 items. Embora ainda não esteja matematicamente provado, é esperando que, dado um numero inteiro positivo qualquer, a sequencia sempre chegará em 1.
# Qual inteiro positivo abaixo de 1 milhão, produz a sequencia com mais items?

# = Reposta e Tempo de Execução
# Respostas: Numero: 837799 - Itens:525

# Tempo de execução:
# 	Ruby 1.8 ~> 64s
# 	Ruby 1.9 ~> 14s

# = Execução
# 	time ruby problema1.rb




class Problema1

	attr_reader :numero, :itens

	def initialize

		@itens = 0
		@numero = 0

		(1..999999).each do |n|
			sequencia_size = Problema1.calculate n
			if sequencia_size > @itens
				@itens = sequencia_size
				@numero = n
			end
		end

		puts "Numero: #{@numero} - Itens:#{@itens}"

	end


	# Método que obtem a quantidade de itens da sequencia para um numero passado como parametro.
	# Escolhi uma implementação por meio de loops, pois possui uma melhor performance que recursão.
	def self.calculate numero
		cont=1

		while numero != 1 do

			if numero.even?
				numero /= 2
				cont += 1
			else
				# Quando o numero é impar, o próximo numero da sequencia será 3n+1, um numero par. Logo, optei por realizar logo
				# a divisão por 2.
				numero = (numero*3 +1)/2
				cont +=2
			end
		end

		cont
	end
end


Problema1.new