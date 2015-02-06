# it is a command to add an operand to the result
class AddCommand 

	def initialize(operand)
		@operand = operand
	end

	def execute(calculator, history)
		history.push(self)
    calculator.add(@operand)
	end

end