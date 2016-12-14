require 'rails_helper'

RSpec.describe "Search for fuel stations" do
  context "searching by zipcode" do
    it "returns propane and electric stations within 6 miles" do

      # As a user
      # When I visit "/"
      # And I fill in the search form with 80203
      # And I click "Locate"
      # Then I should be on page "/search" with parameters visible in the url
      # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
      # And the stations should be limited to Electric and Propane
      # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
      #
      visit '/'

      fill_in "Search", with: "80203"
      click "Locate"

      expect(path).to eq("/search?zipcode=80203")
      expect(page).to have_content("Name")
      expect(page).to have_content("Address")
      expect(page).to have_content("Fuel Types")
      expect(page).to have_content("Distance")
      expect(page).to have_content("Access Times")
      expect(page).to have_content('1st station')
      expect(page).to have_content('last station')
    end
  end
end
