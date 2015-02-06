# it is a command to add an operand to the result
class AddCommand < Command

  def execute_without_recording
    @calc.add(@operand)
  end

end
