require 'spec_helper'
describe "calculator" do

  let(:dispatcher){Dispatch.new(0)}

  it "should add " do
    expect(dispatcher.command('add 5')).to eq(5)
  end
  it "should multiply " do
    dispatcher.command('add 5')
    expect(dispatcher.command('multiply 5')).to eq(25)
  end
  it "should divide " do
    dispatcher.command('add 5')
    expect(dispatcher.command('divide 5')).to eq(1)
  end
  it "should subtract " do
    expect(dispatcher.command('subtract 5')).to eq(-5)
  end
  it "should reset the result " do
    expect(dispatcher.command('cancel')).to eq(0)
  end
  it 'should give abs value' do
    dispatcher.command('add -5')
    expect(dispatcher.command('abs')).to eq(5)
  end
  it 'should give neg value' do
    dispatcher.command('add -5')
    expect(dispatcher.command('neg')).to eq(5)
  end
  it 'should give square root value' do
    dispatcher.command('add 4')
    expect(dispatcher.command('sqrt')).to eq(2)
  end

  it 'should give square value' do
    dispatcher.command('add 2')
    expect(dispatcher.command('sqr')).to eq(4)
  end
  it 'should give cube root value' do
    dispatcher.command('add 8')
    expect(dispatcher.command('cubert')).to eq(2)
  end
  it 'should give cube value' do
    dispatcher.command('add 2')
    expect(dispatcher.command('cube')).to eq(8)
  end
  it 'should repeat last operations' do
    dispatcher.command('add 5')
    dispatcher.command('multiply 2')
    expect(dispatcher.command('repeat 2')).to eq(30)
  end

end
