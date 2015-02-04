require 'spec_helper'

describe 'Subtract' do
	let(:operator) { Subtract.new(0)}
	it 'performs subtraction' do
		expect(operator.perform_operation(5)).to eq(-5)
	end

end