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
  it 'should give abs value' do
    calci.add(-5)
    expect(calci.abs).to eq(5)
  end
  it 'should give neg value' do
    calci.add(-5)
    expect(calci.neg).to eq(5)
  end
  it 'should give square root value' do
    calci.add(4)
    expect(calci.sqrt).to eq(2)
  end
  it 'should give square value' do
    calci.add(-5)
    expect(calci.sqr).to eq(25)
  end
  it 'should give cube root value' do
    calci.add(8)
    expect(calci.cubert).to eq(2)
  end
   it 'should give cube value' do
    calci.add(2)
    expect(calci.cube).to eq(8)
  end
end
