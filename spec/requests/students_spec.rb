require 'spec_helper'

describe "Students" do
  it "should have the title 'DbcPower'" do
    visit '/students'
    expect(page).to have_title('DbcPower')
  end

  it "should have the title 'Leader Board'" do
    visit '/students'
    expect(page).to have_content('Leader Board')
  end

end



# describe "Help page" do
#   it "should have the content 'Help'" do
#     visit '/static_pages/help'
#     expect(page).to have_content('Help')
#   end
# end

# describe "About page" do
#   it "should have the content 'About'" do
#     visit '/static_pages/about'
#     expect(page).to have_content('About')
#   end

#   it "should have the title 'sample_app2'" do
#     visit '/static_pages/about'
#     expect(page).to have_title('SampleApp2')
#   end

#   it "should have the content 'test for me here'" do
#     visit '/static_pages/about'
#     expect(page).to have_content('test for me here')
#   end


# end
