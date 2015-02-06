# it is a command to subtract an operand from the result
class SubtractCommand 

	def initialize(operand)
		@operand = operand
	end

	def execute(calculator, history)
    history.push(self)
		calculator.subtract(@operand)
	end

end