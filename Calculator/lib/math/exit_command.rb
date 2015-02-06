#exits the application

class ExitCommand < Command
  def execute_without_recording
    Process.exit
  end
end