require 'spec_helper'

describe 'CancelCommand' do
  let(:command) { CancelCommand.new}
  let(:calc) {Calculator.new(-5)}
  it 'performs cancellation' do
    expect(command.execute(calc, [])).to eq(0)
  end
end