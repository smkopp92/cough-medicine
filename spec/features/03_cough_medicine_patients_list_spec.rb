require 'spec_helper'

# As a user
# I can see a list of patients taking a cough medicine
# So I know which cough medicines are kid tested mother approved

# - [] When a user visits the medicine show page directly, they should see the list of patients taking the medicine

feature "User sees a cough medicine's patient list" do
  let(:cough_medicine) { FactoryGirl.create(:cough_medicine) }
  let(:good_patient) { FactoryGirl.create(:patient) }
  let!(:bad_patient) { FactoryGirl.create(:patient, name: "Schmezra Schmolnik") }

  #!!!!WARNING!!!!NOT ENOUGH TEST SETUP!!!!

  scenario "User only sees books on their list" do
    visit "/cough_medicines/#{cough_medicine.id}"

    expect(page).to have_content "Schmebastian Schmopp"
    expect(page).to_not have_content "Schmezra Schmolnik"
  end
end
