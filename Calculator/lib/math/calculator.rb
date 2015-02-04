#to do math

class Calculator
	def initialize(val)
		@result = val
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

	def abs
		@result = @result.abs
	end

	def neg
		@result = -1 * @result
	end

	def sqrt
		@result = @result ** 0.5
	end

	def sqr
		@result = @result * @result
	end

	def cubert
		@result = @result ** (1.0 / 3)
	end

	def cube
		@result = @result ** 3
	end

	def cancel
		@result = 0
	end
	
	
end