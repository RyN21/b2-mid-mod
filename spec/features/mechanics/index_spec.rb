require 'rails_helper'

RSpec.describe "Mechanics index page" do
  it "displays all mechanics information" do
    mechanic1 = Mechanic.create!(name: "Joe Bob", years_of_experience: 7)
    mechanic2 = Mechanic.create!(name: "Sam Mills", years_of_experience: 10)
    visit "/mechanics"

    expect(page).to have_content("All Mechanics")
    expect(page).to have_content("Joe Bob")
    expect(page).to have_content("7 years of experience")
    expect(page).to have_content("Sam Mills")
    expect(page).to have_content("10 years of experience")
  end
end
