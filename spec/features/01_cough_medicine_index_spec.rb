require 'spec_helper'

# As any user
# I can see a list of cough medicine
# So I can figure out how to cheat death

# - [x] When any user visits the home page, they see a list of all cough medicine

feature "User sees list of all cough medicines" do
  let!(:cough_medicine) { FactoryGirl.create(:cough_medicine) }
  let!(:new_cough_medicine) { FactoryGirl.create(:cough_medicine, name: "1UP") }

  scenario "User visits the index page to see the list of cough medicine" do
    visit '/'

    expect(page).to have_content "Fairy in a Bottle"
    expect(page).to have_content "1UP"
  end
end
