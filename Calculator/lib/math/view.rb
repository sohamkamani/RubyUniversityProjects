#Controls the I/O of the application
class View
  def initialize(calculator)
    @calc = calculator
  end
  
  def refresh
    print "$ "
    puts @calc.result
    @calc.result
  end

  def get_input
    Kernel.gets
  end
end