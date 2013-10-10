require 'spec_helper'


describe User do
  it "should not save if username is not there" do
    User.create().should eq(nil)     
  end
end    
