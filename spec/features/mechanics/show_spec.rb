require 'rails_helper'

RSpec.describe "Mechanic show page" do
  before :each do
    @park1 = AmusementPark.create!(name: "Six Flags", admission_price: 25)
    @joe = Mechanic.create!(name: "Joe Bob", years_of_experience: 7)
    @sam = Mechanic.create!(name: "Sam Mills", years_of_experience: 10)
    @boomerang = @park1.rides.create!(name: "Boomerang", thrill_rating: 8)
    @tower_of_doom = @park1.rides.create!(name: "Tower of Doom", thrill_rating: 10)
    @mind_eraser = @park1.rides.create!(name: "Mind Eraser", thrill_rating: 9)
    @twister2 = @park1.rides.create!(name: "Twister II", thrill_rating: 7)


  end
  it "displays their name, years of experience, and all rides they worked on" do

    visit "/mechanics/#{@joe.id}"

    expect(page).to have_content("Mechanic: Joe Bob")
    expect(page).to have_content("Years of Experience: 7")

    rides_they_are_working_on = "Current rides they’re working on:
    Boomerang
    Mind Eraser"

    expect(page).to have_content(rides_they_are_working_on)
  end

  it "has a form to add a ride to their workload" do

    visit "/mechanics/#{@joe.id}"

    expect(page).to have_content("Add a ride to workload:")
    
    fill_in :ride, with: "4"

    click_on "Add Ride"

    rides_they_are_working_on = "Current rides they’re working on:
    Boomerang
    Mind Eraser
    Twister II"

    expect(current_path).to eq("/mechanics/#{@joe.id}")
    expect(page).to have_content(rides_they_are_working_on)
  end
end
