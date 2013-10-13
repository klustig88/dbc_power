require 'spec_helper'

describe "root" do
  it "should have the content 'Drop sciences'" do
    visit '/'
    expect(page).to have_content('Drop sciences')
  end

  it "should have the content 'Sign In'" do
    visit '/'
    expect(page).to have_content('Sign In')
  end
end



