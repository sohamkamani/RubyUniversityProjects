# it is a command to subtract an operand from the result
class SubtractCommand < Command

	def initialize(operand, history, calculator)
		super(operand, history, calculator)
	end

  def execute_without_recording
    @calc.subtract(@operand)
  end

end