require "spec_helper"

describe "Calculator Parser" do
  let(:calc_parser) {CalculatorParser.new}
  let(:calc) {Calculator.new(0)}
  it "should parse and return add command" do
    expect(calc_parser.parse("add 5", [], calc).class).to eq(AddCommand)
  end
  it "should parse and return subtract command" do
    expect(calc_parser.parse("subtract 5", [], calc).class).to eq(SubtractCommand)
  end
  it "should parse and return multiply command" do
    expect(calc_parser.parse("multiply 5", [], calc).class).to eq(MultiplyCommand)
  end
  it "should parse and return divide command" do
    expect(calc_parser.parse("divide 5", [], calc).class).to eq(DivideCommand)
  end
  it "should parse and return neg command" do
    expect(calc_parser.parse("neg", [], calc).class).to eq(NegCommand)
  end
  it "should parse and return abs command" do
    expect(calc_parser.parse("abs", [], calc).class).to eq(AbsCommand)
  end
  it "should parse and return sqr command" do
    expect(calc_parser.parse("sqr", [], calc).class).to eq(SqrCommand)
  end
  it "should parse and return sqrt command" do
    expect(calc_parser.parse("sqrt", [], calc).class).to eq(SqrtCommand)
  end
  it "should parse and return cubert command" do
    expect(calc_parser.parse("cubert", [], calc).class).to eq(CubertCommand)
  end
  it "should parse and return cube command" do
    expect(calc_parser.parse("cube", [], calc).class).to eq(CubeCommand)
  end
  it "should parse and return cancel command" do
    expect(calc_parser.parse("cancel", [], calc).class).to eq(CancelCommand)
  end
  it "should parse and return repeat command" do
    expect(calc_parser.parse("repeat 0", [], calc).class).to eq(RepeatCommand)
  end
  it "should parse and return exit command" do
    expect(calc_parser.parse("exit", [], calc).class).to eq(ExitCommand)
  end
  it "should parse and return nil command" do
    expect(calc_parser.parse("dbhbve", [], calc).class).to eq(NilCommand)
  end
end