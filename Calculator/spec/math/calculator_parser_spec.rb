require "spec_helper"

describe "Calculator Parser" do
  let(:calc_parser) {CalculatorParser.new}
  it "should parse and return command" do
    expect(calc_parser.parse("add 5").class).to eq(AddCommand)
  end
end