require 'spec_helper'

describe 'Command' do
    let(:calc) {Calculator.new(0)}
  let(:command) { Command.new(5, [], calc)}
  it 'performs negation' do
    expect(command.execute).to eq(nil)
  end

end