require 'spec_helper'

describe 'NilCommand' do
  let(:command) { NilCommand.new(nil, [], nil)}
  it 'performs negation' do
    expect(command.execute).to eq(nil)
  end

end