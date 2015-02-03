require 'spec_helper'
describe "calculator" do

  let(:calci_parser){CalculatorParser.new}

  it "should add " do
    expect(calci_parser.command('add 5')).to eq(5)
  end
  it "should multiply " do
    calci_parser.command('add 5')
    expect(calci_parser.command('multiply 5')).to eq(25)
  end
  it "should divide " do
    calci_parser.command('add 5')
    expect(calci_parser.command('divide 5')).to eq(1)
  end
  it "should subtract " do
    expect(calci_parser.command('subtract 5')).to eq(-5)
  end
  it "should reset the result " do 
  	expect(calci_parser.command('cancel')).to eq(0)
  end
end
