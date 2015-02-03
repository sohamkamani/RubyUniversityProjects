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
  it 'should give abs value' do
    calci_parser.command('add -5')
    expect(calci_parser.command('abs')).to eq(5)
  end
  it 'should give neg value' do
    calci_parser.command('add -5')
    expect(calci_parser.command('neg')).to eq(5)
  end
  it 'should give square root value' do
    calci_parser.command('add 4')
    expect(calci_parser.command('sqrt')).to eq(2)
  end

  it 'should give square value' do
    calci_parser.command('add 2')
    expect(calci_parser.command('sqr')).to eq(4)
  end
  it 'should give cube root value' do
    calci_parser.command('add 8')
    expect(calci_parser.command('cubert')).to eq(2)
  end
  it 'should give cube value' do
    calci_parser.command('add 2')
    expect(calci_parser.command('cube')).to eq(8)
  end

end
