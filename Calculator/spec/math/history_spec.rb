require 'spec_helper'

describe 'History' do
  let(:history) { History.new}
  it 'performs negation' do
    expect(history.record(AddCommand.new(2))[0].class).to eq(AddCommand)
  end

end