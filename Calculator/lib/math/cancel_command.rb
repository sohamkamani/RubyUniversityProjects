#provides a cancellation command
class CancelCommand < Command
  def execute_without_recording
    @calc.cancel
  end
end


