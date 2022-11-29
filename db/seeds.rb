# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create!( first_name: "quoi", last_name: "feur", pseudo: "quoifeur", email: "feur@gmail.com", password: "feurrrrr")
match = Match.create!( address: "45 boulevard Massena", date: Time.now, comment: "super fort ce mec dénommé joel le grand et l'unique", level_rating: 3, user: user)
