require 'spec_helper'

describe 'RepeatCommand' do
  let(:history) {[]}
  let(:calc) {Calculator.new(0)}
  it 'performs repeat' do
    history.push(AddCommand.new(3, [], calc))
    history.push(SubtractCommand.new(2, [], calc))
    command = RepeatCommand.new(2, history, calc)
    expect(command.execute).to eq(1)
  end

end