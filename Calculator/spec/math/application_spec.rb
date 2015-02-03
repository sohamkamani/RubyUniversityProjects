require 'spec_helper'
describe 'launch' do


  it "test the launch" do
  	
  	calci = CalculatorParser.new
  	allow(CalculatorParser).to receive(:new) { calci }
  	allow(Kernel).to receive(:gets) { "add 5" }
  	expect(calci).to receive(:command).with("add 5")

  	app = Application.new
  	app.start_test
  	
  end

end 

