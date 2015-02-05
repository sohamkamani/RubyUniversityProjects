require 'spec_helper'

describe 'RepeatCommand' do
  let(:history) {History.new}
  let(:calc) {Calculator.new(0)}
  it 'performs repeat' do
    history.record(AddCommand.new(3))
    history.record(SubtractCommand.new(2))
    command = RepeatCommand.new(2, history)
    expect(command.execute(calc)).to eq(1)
  end

end