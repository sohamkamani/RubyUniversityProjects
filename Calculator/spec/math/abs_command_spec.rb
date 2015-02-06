require 'spec_helper'

describe 'AbsCommand' do
  let(:calc) {Calculator.new(-5)}
  let(:command) { AbsCommand.new(nil, [], calc)}
  it 'performs absolute operation' do
    expect(command.execute).to eq(5)
  end
end