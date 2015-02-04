# to parse inputs and make the calculator compute the result
class CalculatorParser

	def parse(command_string)

		@opr = command_string.split
		@opr[1] = @opr[1].to_f
		return @opr

	end
	
	
end