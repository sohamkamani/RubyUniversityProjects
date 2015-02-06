require 'spec_helper'

describe 'SqrCommand' do
  let(:command) { SqrCommand.new}
  let(:calc) {Calculator.new(5)}
  it 'performs square operation' do
    expect(command.execute(calc, [])).to eq(25)
  end
end