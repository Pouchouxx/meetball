require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Match.destroy_all
User.destroy_all
user1 = User.new(
  email: "pouchoux@gmail.com",
  password: "123456",
  first_name: "Hugo",
  last_name: "Pouchoux",
  pseudo: "Poucx"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670402524/pouchoux_jqjj8l.jpg")
user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save!

user2 = User.new(
  email: "jojo@gmail.com",
  password: "123456",
  first_name: "Joel",
  last_name: "Irmiahu",
  pseudo: "LaFragilité"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670402244/115413668_d3hkmb.jpg")
user2.photo.attach(io: file, filename: "jojo.png", content_type: "image/png")
user2.save!

user3 = User.create!(
  email: "mario@gmail.com",
  password: "123456",
  first_name: "Mario",
  last_name: "Aouane",
  pseudo: "Balisto"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670402471/mario_fuwjlp.png")
user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save!

user4 = User.create!(
  email: "Hugo@gmail.com",
  password: "123456",
  first_name: "Hugo",
  last_name: "Chipotel",
  pseudo: "JteCross"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670402664/Photo_test_exo_zqp5qy.jpg")
user4.photo.attach(io: file, filename: "HugoC.png", content_type: "image/png")
user4.save!

user5 = User.create!(
  email: "Raph@gmail.com",
  password: "123456",
  first_name: "Raph",
  last_name: "Assaf",
  pseudo: "GoatMPP"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670325568/k89spmqkfwheylrdttdqoaydjt1r.jpg")
user5.photo.attach(io: file, filename: "Raph.png", content_type: "image/png")
user5.save!

user6 = User.create!(
  email: "Magnus@gmail.com",
  password: "123456",
  first_name: "Magnus",
  last_name: "Midtbo",
  pseudo: "InYourFace"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670325569/86webcfa3iwjk2ntz2aoblo42i7l.jpg")
user6.photo.attach(io: file, filename: "Magnus.png", content_type: "image/png")
user6.save!

match1 = Match.create!(
  address: '116 quai de Jemmapes, 75010 Paris',
  comment: 'Bonne ambiance, rdv au nouveau terrain auriol en mode detente',
  date: Date.today + 1.days + 16.hours,
  level_rating: 1,
  user: user1
)

match2 = Match.create!(
  address: '234 Boulevard de la Villette, 75019 Paris',
  comment: 'Lebron est sur le terrain les gars on a besoin de 3 goats pour le battre, on se rejoint sous le métro aérien siuuuu',
  date: Date.today + 15.hours,
  level_rating: 3,
  user: user2
)

match3 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'Training ce soir les gars venez si vous etes chaud',
  date: Date.today + 19.hours,
  level_rating: 2,
  user: user4
)

match4 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'Concour de shoot ou de dunk pour les plus chaud',
  date: Date.today + 2.days + 14.hours,
  level_rating: 2,
  user: user5
)

# team1 = Team.create(
#   match: match1
# )

# team2 = Team.create(
#   match: match1
# )

participation1 = Participation.create(
  user: user6,
  team: match1.teams.first
)
participation2 = Participation.create(
  user: user3,
  team: match1.teams.first
)
participation3 = Participation.create(
  user: user4,
  team: match1.teams.last
)
team = match1.teams.last
team.name = "#{user4.pseudo}'s teams"

participation4 = Participation.create(
  user: user5,
  team: match1.teams.last
)
participation5 = Participation.create(
  user: user2,
  team: match1.teams.last
)
