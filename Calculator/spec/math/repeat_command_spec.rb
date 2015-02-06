require 'spec_helper'

describe 'RepeatCommand' do
  let(:history) {[]}
  let(:calc) {Calculator.new(0)}
  it 'performs repeat' do
    history.push(AddCommand.new(3))
    history.push(SubtractCommand.new(2))
    command = RepeatCommand.new(2)
    expect(command.execute(calc, history)).to eq(1)
  end

end