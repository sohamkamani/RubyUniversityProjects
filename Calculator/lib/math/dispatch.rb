# to parse inputs and make the calculator compute the result
class Dispatch
  def initialize(val)
    @calci = Calculator.new(val)
    @parser = CalculatorParser.new
    @command_history = []
  end

  def command(command_string,record_history = true)

    if record_history
      @command_history.push(command_string)
      
    end

      @operator,@operand = @parser.parse(command_string)

      if @operator == "add"
        @result = @calci.add(@operand)
      elsif @operator == "subtract"
        @result = @calci.subtract(@operand)
      elsif @operator == "multiply"
        @result = @calci.multiply(@operand)
      elsif @operator == "divide"
        @result = @calci.divide(@operand)
      elsif @operator == "abs"
        @result = @calci.abs
      elsif @operator == "neg"
        @result = @calci.neg
      elsif @operator == "sqrt"
        @result = @calci.sqrt
      elsif @operator == "sqr"
        @result = @calci.sqr
      elsif @operator == "cubert"
        @result = @calci.cubert
      elsif @operator == "cube"
        @result = @calci.cube
      elsif @operator == "cancel"
        @result = @calci.cancel
      elsif @operator == "repeat"
        
        @command_history.pop
        counter = @operand * (-1)
        
        while counter != 0
          self.command(@command_history[counter],false)
          counter += 1
        end
      end



      return @result
    end


  end
