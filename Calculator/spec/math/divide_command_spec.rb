require 'spec_helper'

describe 'DivideCommand' do
  let(:command) { DivideCommand.new(5)}
  let(:calc) {Calculator.new(10)}
  it 'performs negation' do
    expect(command.execute(calc, [])).to eq(2)
  end

end