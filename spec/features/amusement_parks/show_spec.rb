require 'rails_helper'

RSpec.describe "Amusement Park show page" do
  before :each do
    @park1 = AmusementPark.create!(name: "Six Flags", admission_price: 25)
    @boomerang = @park1.rides.create!(name: "Boomerang", thrill_rating: 8)
    @tower_of_doom = @park1.rides.create!(name: "Tower of Doom", thrill_rating: 10)
    @mind_eraser = @park1.rides.create!(name: "Mind Eraser", thrill_rating: 9)
    @twister2 = @park1.rides.create!(name: "Twister II", thrill_rating: 7)
  end

  it "displays amusement parks information" do

    visit "/amusement_parks/#{@park1.id}"

    expect(page).to have_content("Six Flags")
    expect(page).to have_content("Admissions: $25.00")
  end

  it "displays the names of all the rides in alphabetical order" do

    visit "/amusement_parks/#{@park1.id}"

    expect(page).to have_content("Boomerang")
    expect(page).to have_content("Mind Eraser")
    expect(page).to have_content("Tower of Doom")
    expect(page).to have_content("Twister II")
  end
  # it "displays the average thrill rating of the amusement park's rides" do
  #
  #   visit "/amusement_parks/#{amusement_parks.id}"
  #
  #   expect(page).to have_content("Average Thrill Rating of Rides: 8.5/10")
  # end
end
