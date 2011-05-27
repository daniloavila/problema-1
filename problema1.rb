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

	def self.calculate numero
		cont=1

		while numero != 1 do

			if numero.even?
				numero /= 2
				cont += 1
			else
				numero = (numero*3 +1)/2
				cont +=2
			end
		end

		cont
	end
end
