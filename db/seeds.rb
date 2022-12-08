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

#****************** IL Y A LES USERS APRÈS ÇA******************************************
user1 = User.new(
  email: "pouchoux@gmail.com",
  password: "123456",
  first_name: "Hugo",
  last_name: "Pouchoux",
  pseudo: "Poucx"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670402524/pouchoux_jqjj8l.jpg")
user1.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user1.save!

user2 = User.new(
  email: "jojo@gmail.com",
  password: "123456",
  first_name: "Joel",
  last_name: "Irmiahu",
  pseudo: "LaFragilité"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670402244/115413668_d3hkmb.jpg")
user2.photo.attach(io: file, filename: "jojo.jpg", content_type: "image/jpg")
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
user4.photo.attach(io: file, filename: "HugoC.jpg", content_type: "image/jpg")
user4.save!

user5 = User.create!(
  email: "Raph@gmail.com",
  password: "123456",
  first_name: "Raph",
  last_name: "Assaf",
  pseudo: "GoatMPP"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670325568/k89spmqkfwheylrdttdqoaydjt1r.jpg")
user5.photo.attach(io: file, filename: "Raph.jpg", content_type: "image/jpg")
user5.save!

user6 = User.create!(
  email: "Magnus@gmail.com",
  password: "123456",
  first_name: "Magnus",
  last_name: "Midtbo",
  pseudo: "InYourFace"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670325569/86webcfa3iwjk2ntz2aoblo42i7l.jpg")
user6.photo.attach(io: file, filename: "Magnus.jpg", content_type: "image/jpg")
user6.save!

#*************************** IL Y A LES MARTCHS APRES ÇA********************************

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
  comment: 'Match tranquil ;)',
  date: Date.today + 2.days + 14.hours,
  level_rating: 1,
  user: user5
)

match5 = Match.create!(
  address: '116 quai de Jemmapes, 75010 Paris',
  comment: 'Tray hard only !',
  date: Date.today + 1.days + 16.hours,
  level_rating: 3,
  user: user1
)

match6 = Match.create!(
  address: '234 Boulevard de la Villette, 75019 Paris',
  comment: 'Shaquille O Neal est sur le terrain les gars !  On va faire pleins de  1 contre 1 !',
  date: Date.today + 5.days + 15.hours,
  level_rating: 3,
  user: user2
)

match7 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'Training sur les shoot ce soir, tout niveau accepté',
  date: Date.today + 3.hours,
  level_rating: 1,
  user: user4
)

match8 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'Concour de shoot ! et/ou de dunks pour les gars les plus deter !',
  date: Date.today + 2.days + 14.hours,
  level_rating: 3,
  user: user5
)
match9 = Match.create!(
  address: '116 quai de Jemmapes, 75010 Paris',
  comment: 'Bonne ambiance, très chill',
  date: Date.today + 1.days + 16.hours,
  level_rating: 1,
  user: user1
)

match10 = Match.create!(
  address: '234 Boulevard de la Villette, 75019 Paris',
  comment: 'Stephen Curry, aka the shooter est sur le terrain.. les gars on a besoin de 3 goats pour le battre, ça va être le feu !',
  date: Date.today + 4.days + 15.hours,
  level_rating: 3,
  user: user2
)

match11 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'je prend tout le monde en 1v1',
  date: Date.today + 1.days + 19.hours,
  level_rating: 3,
  user: user4
)

match12 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'Only gods can come !',
  date: Date.today + 14.hours,
  level_rating: 3,
  user: user5
)
match13 = Match.create!(
  address: '116 quai de Jemmapes, 75010 Paris',
  comment: 'Le perdant offre à boire',
  date: Date.today + 2.days + 6.hours,
  level_rating: 1,
  user: user1
)

match14 = Match.create!(
  address: '234 Boulevard de la Villette, 75019 Paris',
  comment: 'only 3points',
  date: Date.today + 15.hours,
  level_rating: 3,
  user: user2
)

match15 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'Do not be affraid about my skills',
  date: Date.today + 19.hours,
  level_rating: 3,
  user: user4
)

match16 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'Je veux devenir coach pour les pro, je donne un cours de basket ce soir.(debutant-intermédiaire only)',
  date: Date.today + 8.hours,
  level_rating: 2,
  user: user5
)
match17 = Match.create!(
  address: '116 quai de Jemmapes, 75010 Paris',
  comment: 'Je veux apprendre ce sport, si toi aussi tu veux aprendre ou que tu es fort, tu es le bienvenue.',
  date: Date.today + 1.days + 16.hours,
  level_rating: 1,
  user: user1
)

match18 = Match.create!(
  address: '234 Boulevard de la Villette, 75019 Paris',
  comment: 'Luka Dončić will come, so litlle guys do not come please.',
  date: Date.today + 6.days + 15.hours,
  level_rating: 3,
  user: user2
)

match19 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'Training du soir, bonsoir',
  date: Date.today + 9.hours,
  level_rating: 2,
  user: user4
)

match20 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'Petit concours de drible pour etre comme Kyrie Irvin',
  date: Date.today + 2.days + 14.hours,
  level_rating: 2,
  user: user5
)
match21 = Match.create!(
  address: '116 quai de Jemmapes, 75010 Paris',
  comment: 'Bonne ambiance, pas de prise de tete',
  date: Date.today + 1.days + 16.hours,
  level_rating: 1,
  user: user1
)

match22 = Match.create!(
  address: '234 Boulevard de la Villette, 75019 Paris',
  comment: 'Victor Wembanyama sera la donc venez !',
  date: Date.today + 10.hours,
  level_rating: 2,
  user: user2
)

match23 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'Petit match pour décompresser',
  date: Date.today + 19.hours,
  level_rating: 2,
  user: user4
)

match24 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'Gros concours venez avec vos potes !',
  date: Date.today + 9.days + 14.hours,
  level_rating: 2,
  user: user5
)




# team1 = Team.create(
  #   match: match1
  # )

  # team2 = Team.create(
    #   match: match1
    # )

#***************************** Après ça il y a les partications !**************************************************
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
