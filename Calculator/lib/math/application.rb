#starts the calculator
class Application

  def initialize
    @calc = Calculator.new(0)
    
  end

  def start

    parser = CalculatorParser.new 
     
     begin
        
        print "$ "
        input = gets.chomp
        cmd = @parser.parse(input)
        puts cmd.execute(@calc)

      end while input != 'exit'
    end


    def start_test
      parser = CalculatorParser.new
      input = Kernel.gets.chomp
      cmd = parser.parse(input)      
    end


  end
