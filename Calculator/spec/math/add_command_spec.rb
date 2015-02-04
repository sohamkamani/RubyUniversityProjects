require 'spec_helper'

describe 'AddCommand' do
	let(:command) { AddCommand.new(5)}
	let(:calc) {Calculator.new(0)}
	it 'performs negation' do
		expect(command.execute(calc)).to eq(5)
	end

end