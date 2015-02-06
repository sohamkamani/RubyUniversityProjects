#provides an abs command
class AbsCommand < Command
  def execute_without_recording
    @calc.abs
  end
end