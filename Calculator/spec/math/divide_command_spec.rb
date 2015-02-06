require 'spec_helper'

describe 'DivideCommand' do
  let(:calc) {Calculator.new(10)}
  let(:command) { DivideCommand.new(5, [], calc)}
  it 'performs negation' do
    expect(command.execute).to eq(2)
  end

end