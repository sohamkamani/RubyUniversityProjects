require 'spec_helper'

describe 'SqrtCommand' do
  let(:calc) {Calculator.new(25)}
  let(:command) { SqrtCommand.new(nil, [], calc)}
  it 'performs square root operation' do
    expect(command.execute).to eq(5)
  end
end