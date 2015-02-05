require 'spec_helper'

describe 'AbsCommand' do
  let(:command) { AbsCommand.new}
  let(:calc) {Calculator.new(-5)}
  it 'performs absolute operation' do
    expect(command.execute(calc)).to eq(5)
  end
end