require 'spec_helper'

describe 'Multiply' do
	let(:operator) { Multiply.new(2)}
	it 'performs multiplication' do
		expect(operator.perform_operation(5)).to eq(10)
	end

end