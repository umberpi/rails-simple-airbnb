# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

5.times do
  new_flat = Flat.new(
    name: Faker::Superhero.name,
    address: Faker::Address.full_address,
    description: Faker::Hipster,
    price_per_night: Faker::PhoneNumber,
    number_of_guests: values.sample,
    )
  new_flat.save
end

Flat.create

