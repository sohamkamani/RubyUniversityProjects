require 'spec_helper'

describe 'Add' do
	let(:operator) { Add.new(0)}
	it 'performs addition' do
		expect(operator.perform_operation(5)).to eq(5)
	end

end