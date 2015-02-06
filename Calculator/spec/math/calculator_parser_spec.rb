require "spec_helper"

describe "Calculator Parser" do
  let(:calc_parser) {CalculatorParser.new}
  it "should parse and return add command" do
    expect(calc_parser.parse("add 5").class).to eq(AddCommand)
  end
  it "should parse and return subtract command" do
    expect(calc_parser.parse("subtract 5").class).to eq(SubtractCommand)
  end
  it "should parse and return multiply command" do
    expect(calc_parser.parse("multiply 5").class).to eq(MultiplyCommand)
  end
  it "should parse and return divide command" do
    expect(calc_parser.parse("divide 5").class).to eq(DivideCommand)
  end
  it "should parse and return neg command" do
    expect(calc_parser.parse("neg").class).to eq(NegCommand)
  end
  it "should parse and return abs command" do
    expect(calc_parser.parse("abs").class).to eq(AbsCommand)
  end
  it "should parse and return sqr command" do
    expect(calc_parser.parse("sqr").class).to eq(SqrCommand)
  end
  it "should parse and return sqrt command" do
    expect(calc_parser.parse("sqrt").class).to eq(SqrtCommand)
  end
  it "should parse and return cubert command" do
    expect(calc_parser.parse("cubert").class).to eq(CubertCommand)
  end
  it "should parse and return cube command" do
    expect(calc_parser.parse("cube").class).to eq(CubeCommand)
  end
  it "should parse and return cancel command" do
    expect(calc_parser.parse("cancel").class).to eq(CancelCommand)
  end
  it "should parse and return repeat command" do
    expect(calc_parser.parse("repeat 0").class).to eq(RepeatCommand)
  end
end