require 'spec_helper'

describe 'CubeCommand' do
  let(:calc) {Calculator.new(5)}
  let(:command) { CubeCommand.new(nil, [], calc)}
  it 'performs square operation' do
    expect(command.execute).to eq(125)
  end
end