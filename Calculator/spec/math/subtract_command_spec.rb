require 'spec_helper'

describe 'SubtractCommand' do
	let(:command) { SubtractCommand.new(5)}
	let(:calc) {Calculator.new(0)}
	it 'performs negation' do
		expect(command.execute(calc)).to eq(-5)
	end

end