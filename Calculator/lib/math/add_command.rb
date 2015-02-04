class AddCommand 

	def initialize(operand)
		@operand = operand
	end

	def execute(calculator)
		calculator.add(@operand)
	end

end