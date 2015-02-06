#provides a command for finding the square
class SqrCommand < Command

  def execute_without_recording
    @calc.sqr
  end


end
