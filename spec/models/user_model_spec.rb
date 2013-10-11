require 'spec_helper'



describe User do

  let(:user) { User.new( ) }

  it "should not save if username is not there" do
    user.save.should eq(false)
  end

  it "should start with a default value of 3" do
    @user= User.create(username: "hannahbarbarah", password: "password", password_confirmation: "password", email: "s@ma.com" )
    @user.votes_left.should eq(3)
  end

  it "should have a valid email" do
    @user= User.create(username: "hannahbarbarah", password: "password", password_confirmation: "password", email: "sma.com" )
    @user.save.should eq(false)
  end


end
