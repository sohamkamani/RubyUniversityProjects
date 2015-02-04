class Neg
	def initialize(result)
		@result = result
	end

	def perform_operation(value)
		@result = @result * (-1)
	end
	
end