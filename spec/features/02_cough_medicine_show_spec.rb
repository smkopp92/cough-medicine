require 'spec_helper'

# As any user
# I can see a cough medicines details
# So I can pick my favorite medicine based on how tasty it is

# - [] When a user visits the home page, they can click a medicine link to get to the show page
# - [] When a user visits the show page directly, they see the details of a medicine

feature "User sees specific cough medicine info" do
  let!(:cough_medicine) { FactoryGirl.create(:cough_medicine) }
  scenario "user visits show page through index page" do
    visit '/'

    expect(page).to have_link cough_medicine.name

    click_link cough_medicine.name

    expect(page).to have_current_path("/cough_medicines/#{cough_medicine.id}")
  end

  scenario "unauthenticated user sees list of cough_medicines" do
    visit "/cough_medicines/#{cough_medicine.id}"

    expect(page).to have_content "Name: Fairy in a Bottle"
    expect(page).to have_content "Recommended Dose: 6 scoops"
    expect(page).to have_content "Tastiness: 6"
  end
end
