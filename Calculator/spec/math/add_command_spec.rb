require 'spec_helper'

describe 'AddCommand' do
	let(:calc) {Calculator.new(0)}
  let(:command) { AddCommand.new(5, [], calc)}
	it 'performs negation' do
		expect(command.execute).to eq(5)
	end

end