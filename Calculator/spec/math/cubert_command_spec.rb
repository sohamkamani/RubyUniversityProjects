require 'spec_helper'

describe 'CubertCommand' do
  let(:command) { CubertCommand.new}
  let(:calc) {Calculator.new(125)}
  it 'performs cube root operation' do
    expect(command.execute(calc)).to eq(5)
  end
end