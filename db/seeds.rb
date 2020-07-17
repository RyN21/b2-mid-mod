# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@park1 = AmusementPark.create!(name: "Six Flags", admission_price: 25)
@joe = Mechanic.create!(name: "Joe Bob", years_of_experience: 7)
@sam = Mechanic.create!(name: "Sam Mills", years_of_experience: 10)
@boomerang = @park1.rides.create!(name: "Boomerang", thrill_rating: 8)
@tower_of_doom = @park1.rides.create!(name: "Tower of Doom", thrill_rating: 10)
@mind_eraser = @park1.rides.create!(name: "Mind Eraser", thrill_rating: 9)
@twister2 = @park1.rides.create!(name: "Twister II", thrill_rating: 7)
MechanicRide.create(ride: @boomerang, mechanic: @joe)
MechanicRide.create(ride: @mind_eraser, mechanic: @joe)
MechanicRide.create(ride: @boomerang, mechanic: @sam)
MechanicRide.create(ride: @twister2, mechanic: @sam)
