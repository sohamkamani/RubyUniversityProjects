require 'spec_helper'
describe 'launch' do


  it "test the launch" do
  	
  	dispatcher = Dispatch.new(0)
  	allow(Dispatch).to receive(:new) { dispatcher}
  	allow(Kernel).to receive(:gets) { "add 5" }
  	expect(dispatcher).to receive(:command).with("add 5")

  	app = Application.new
  	app.start_test
  	
  end

end 

