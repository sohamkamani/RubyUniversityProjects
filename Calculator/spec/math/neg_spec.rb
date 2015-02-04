require 'spec_helper'

describe 'Negation' do
	let(:operator) { Neg.new(5)}
	it 'performs negation' do
		expect(operator.perform_operation(nil)).to eq(-5)
	end

end