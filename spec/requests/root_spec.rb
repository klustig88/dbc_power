require 'spec_helper'

describe "root" do
  it "should have the content 'Welcome'" do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
