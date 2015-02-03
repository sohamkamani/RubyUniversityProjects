#to   execute commands

class Calculator
	def initialize
		@result = 0
	end

	def add(operand)
		@result = @result + operand
	end

	def subtract(operand)
		@result = @result - operand
	end

	def multiply(operand)
		@result = @result * operand
	end

	def divide(operand)
		@result = @result / operand
	end

	def cancel
		@result = 0
	end
	
	
end