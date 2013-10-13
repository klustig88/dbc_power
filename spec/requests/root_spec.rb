require 'spec_helper'

describe "root" do
  it "should have the content 'Welcome'" do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end

describe "root" do
  it "should have the content 'Welcome to DBC Power Rankings'" do
    visit '/'
    expect(page).to have_content('Welcome to DBC Power Rankings')
  end
end


