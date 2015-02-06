require 'spec_helper'

describe 'CancelCommand' do
  let(:calc) {Calculator.new(-5)}
  let(:command) { CancelCommand.new(nil, [], calc)}
  it 'performs cancellation' do
    expect(command.execute).to eq(0)
  end
end