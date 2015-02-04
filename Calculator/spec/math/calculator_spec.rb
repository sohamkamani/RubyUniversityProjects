require 'spec_helper'

describe 'calculator' do
   let(:calci){Calculator.new(5)}

  it 'should add' do
    expect(calci.add(5)).to eq(10)
  end
  it 'should multiply' do
    expect(calci.multiply(5)).to eq(25)
  end
  it 'should divide' do
    expect(calci.divide(5)).to eq(1)
  end
  it 'should subtract' do
    expect(calci.subtract(5)).to eq(0)
  end
  it 'should give abs value' do
    expect(calci.abs).to eq(5)
  end
  it 'should give neg value' do
    expect(calci.neg).to eq(-5)
  end
  it 'should give square root value' do
    calci.subtract(1)
    expect(calci.sqrt).to eq(2)
  end
  it 'should give square value' do
    expect(calci.sqr).to eq(25)
  end
  it 'should give cube root value' do
    calci.add(3)
    expect(calci.cubert).to eq(2)
  end
   it 'should give cube value' do
    calci.subtract(3)
    expect(calci.cube).to eq(8)
  end
end
