require 'spec_helper'

describe "Exit" do
  let (:exit1) { ExitCommand.new(nil, [], nil)}
  it "checking if process.exit is called" do
    expect(Process).to receive(:exit)
    exit1.execute
  end
end
