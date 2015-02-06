require 'spec_helper'

describe 'SqrtCommand' do
  let(:command) { SqrtCommand.new}
  let(:calc) {Calculator.new(25)}
  it 'performs square root operation' do
    expect(command.execute(calc, [])).to eq(5)
  end
end