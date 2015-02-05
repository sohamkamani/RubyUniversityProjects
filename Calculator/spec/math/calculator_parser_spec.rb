require "spec_helper"

describe "Calculator Parser" do
  let(:calc_parser) {CalculatorParser.new}
  it "should parse and return add command" do
    expect(calc_parser.parse("add 5").class).to eq(AddCommand)
  end
  it "should parse and return subtract command" do
    expect(calc_parser.parse("subtract 5").class).to eq(SubtractCommand)
  end
  it "should parse and return neg command" do
    expect(calc_parser.parse("neg").class).to eq(NegCommand)
  end
end