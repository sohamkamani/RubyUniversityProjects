# it is a command to add an operand to the result
class AddCommand 

	def initialize(operand)
		@operand = operand
	end

	def execute(calculator)
		calculator.add(@operand)
	end

end