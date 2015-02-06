require 'spec_helper'

describe 'NegCommand' do
  let(:command) { NegCommand.new}
  let(:calc) {Calculator.new(-5)}
  it 'performs negation' do
    expect(command.execute(calc, [])).to eq(5)
  end
end