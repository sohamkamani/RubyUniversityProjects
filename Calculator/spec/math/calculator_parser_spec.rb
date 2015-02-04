require "spec_helper"

describe "Calculator Parser" do
  let(:calc_parser) {CalculatorParser.new}
  it "should parse commande given" do
    expect(calc_parser.parse("add 5")).to eq(["add",5])
  end
end