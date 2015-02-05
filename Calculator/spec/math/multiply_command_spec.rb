require 'spec_helper'

describe 'MultiplyCommand' do
  let(:command) { MultiplyCommand.new(5)}
  let(:calc) {Calculator.new(10)}
  it 'performs multiplication' do
    expect(command.execute(calc)).to eq(50)
  end

end