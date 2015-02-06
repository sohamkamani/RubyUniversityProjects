require 'spec_helper'

describe 'SqrCommand' do
  let(:calc) {Calculator.new(5)}
  let(:command) { SqrCommand.new(nil, [], calc)}
  it 'performs square operation' do
    expect(command.execute).to eq(25)
  end
end