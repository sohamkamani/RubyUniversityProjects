require 'spec_helper'

describe 'CubertCommand' do
  let(:calc) {Calculator.new(125)}
  let(:command) { CubertCommand.new(nil, [], calc)}
  it 'performs cube root operation' do
    expect(command.execute).to eq(5)
  end
end