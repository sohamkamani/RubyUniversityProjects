require 'spec_helper'

describe 'MultiplyCommand' do
  let(:calc) {Calculator.new(10)}
  let(:command) { MultiplyCommand.new(5, [], calc)}
  it 'performs multiplication' do
    expect(command.execute).to eq(50)
  end

end