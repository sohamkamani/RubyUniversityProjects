require 'spec_helper'

describe 'calculator' do
  let(:calci){Calculator.new}
  it 'should add' do
    expect(calci.add(5)).to eq(5)
  end
  it 'should multiply' do
    calci.add(5)
    expect(calci.multiply(5)).to eq(25)
  end
  it 'should divide' do
    calci.add(5)
    expect(calci.divide(5)).to eq(1)
  end
  it 'should subtract' do
    calci.add(5)
    expect(calci.subtract(5)).to eq(0)
  end

end
