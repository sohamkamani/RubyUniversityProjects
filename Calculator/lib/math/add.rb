class Add
	def initialize(result)
		@result = result
	end

	def perform_operation(value)
		@result += value
	end
	
end