require 'spec_helper'

describe 'CubeCommand' do
  let(:command) { CubeCommand.new}
  let(:calc) {Calculator.new(5)}
  it 'performs square operation' do
    expect(command.execute(calc, [])).to eq(125)
  end
end