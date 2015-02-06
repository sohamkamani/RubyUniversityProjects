require "spec_helper"

describe "View" do
  let(:view) {View.new(Calculator.new(0))}
  it "shows output" do
    expect(view.refresh).to eq(0)
  end

  it "gets input" do
    allow(Kernel).to receive(:gets) { "add 5" }
    expect(view.get_input).to eq("add 5")
  end
end

