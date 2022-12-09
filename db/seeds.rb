require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying matches"
Match.destroy_all
puts "destroying all users"
User.destroy_all
puts "done"

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

user7 = User.create!(
  email: "Lloris@gmail.com",
  password: "123456",
  first_name: "Hugo",
  last_name: "Lloris",
  pseudo: "Lloris"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579790/2x0vu4zem26irt81ydfb04wr9si6_ygknkp.png")
user7.photo.attach(io: file, filename: "lloris.png", content_type: "image/png")
user7.save!

user8 = User.create!(
  email: "Lebron@gmail.com",
  password: "123456",
  first_name: "Lebron",
  last_name: "James",
  pseudo: "Lebron"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579966/images_yfqo2u.jpg")
user8.photo.attach(io: file, filename: "lebron.jpg", content_type: "image/jpg")
user8.save!

user9 = User.create!(
  email: "romain@gmail.com",
  password: "123456",
  first_name: "Romain",
  last_name: "Delimal",
  pseudo: "Canon?"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579810/3smt8r3ooj5o3nhcwy3ysweg0nb1_ml2qhb.jpg")
user9.photo.attach(io: file, filename: "romain.jpg", content_type: "image/jpg")
user9.save!

user10 = User.create!(
  email: "ambre@gmail.com",
  password: "123456",
  first_name: "Ambre",
  last_name: "Lala",
  pseudo: "Amber"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579818/5ljdmazpwphdn6vwhgr9taqq8pex_mnkttp.jpg")
user10.photo.attach(io: file, filename: "amber.jpg", content_type: "image/jpg")
user10.save!

user11 = User.create!(
  email: "gabi@gmail.com",
  password: "123456",
  first_name: "Gabi",
  last_name: "Martinelli",
  pseudo: "Gabi"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579918/gabriel-martinelli-may2022_femvk8.jpg")
user11.photo.attach(io: file, filename: "gabi.jpg", content_type: "image/jpg")
user11.save!

user12 = User.create!(
  email: "sucre@gmail.com",
  password: "123456",
  first_name: "Hugo",
  last_name: "Sucre",
  pseudo: "Tissmey"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670581075/images_oltxlp.jpg")
user12.photo.attach(io: file, filename: "stef.jpg", content_type: "image/jpg")
user12.save!

user13 = User.create!(
  email: "nico@gmail.com",
  password: "123456",
  first_name: "Nico",
  last_name: "Bischoff",
  pseudo: "Nico"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579699/55391122_np12h7.jpg")
user13.photo.attach(io: file, filename: "nico.jpg", content_type: "image/jpg")
user13.save!

user14 = User.create!(
  email: "mathieu@gmail.com",
  password: "123456",
  first_name: "Mathieu",
  last_name: "Trancoso",
  pseudo: "Genie"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579712/T02NE0241-U01HQ8S07RC-492a348bec10-512_p9wyl4.jpg")
user14.photo.attach(io: file, filename: "mat.jpg", content_type: "image/jpg")
user14.save!

user15 = User.create!(
  email: "py@gmail.com",
  password: "123456",
  first_name: "PY",
  last_name: "Hoorens",
  pseudo: "PYlegoat"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579729/T02NE0241-U02T41A0YCW-e9ca0a7acd1f-512_prmscp.jpg")
user15.photo.attach(io: file, filename: "py.jpg", content_type: "image/jpg")
user15.save!

user16 = User.create!(
  email: "tim@gmail.com",
  password: "123456",
  first_name: "Timothee",
  last_name: "Regis",
  pseudo: "Surfer"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579741/T02NE0241-USA18F3FE-d1ad3cc83b51-512_vastfu.jpg")
user16.photo.attach(io: file, filename: "tim.jpg", content_type: "image/jpg")
user16.save!

user17 = User.create!(
  email: "diane@gmail.com",
  password: "123456",
  first_name: "Diane",
  last_name: "JR",
  pseudo: "DJR"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670580580/T02NE0241-UDF8DJTMM-7c86d3baa559-512_t8gbyx.jpg")
user17.photo.attach(io: file, filename: "diane.jpg", content_type: "image/jpg")
user17.save!

user18 = User.create!(
  email: "max@gmail.com",
  password: "123456",
  first_name: "Max",
  last_name: "Jammer",
  pseudo: "YouJam"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579750/T02NE0241-U045KEY3K60-68cf6e7c23fb-512_mlvljz.jpg")
user18.photo.attach(io: file, filename: "max.jpg", content_type: "image/jpg")
user18.save!

user19 = User.create!(
  email: "jerem@gmail.com",
  password: "123456",
  first_name: "jeremy",
  last_name: "boss",
  pseudo: "boss"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579764/T02NE0241-U010LE2G2MV-ec6d278a203f-512_ge04gu.png")
user19.photo.attach(io: file, filename: "jerem.png", content_type: "image/png")
user19.save!

user20 = User.create!(
  email: "paull@gmail.com",
  password: "123456",
  first_name: "paul",
  last_name: "lahana",
  pseudo: "referent"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670579680/T02NE0241-UP3G6NUJY-67d30e168b0a-512_bwkwda.jpg")
user20.photo.attach(io: file, filename: "paul.jpg", content_type: "image/jpg")
user20.save!

user21 = User.create!(
  email: "akashi@gmail.com",
  password: "123456",
  first_name: "akashi",
  last_name: "kuroko",
  pseudo: "Akashi"
)
file = URI.open("https://res.cloudinary.com/dgcz6f1yu/image/upload/v1670581024/7fc353039a4b7ebdecad7abae9563a1d22ddd6d8v2_00_xatkq9.jpg")
user21.photo.attach(io: file, filename: "akashi.jpg", content_type: "image/jpg")
user21.save!



#*************************** IL Y A LES MATCHS APRES ÇA********************************

match1 = Match.create!(
  address: '117 Rue Rambuteau, 75001 Paris',
  comment: 'Bonne ambiance, rdv au nouveau terrain auriol en mode detente',
  date: Date.today + 1.days + 16.hours,
  level_rating: 1,
  user: user1
)

match2 = Match.create!(
  address: '17 Rue Léopold Bellan, 75002 Paris',
  comment: 'Lebron est sur le terrain les gars on a besoin de 3 goats pour le battre, on se rejoint sous le métro aérien siuuuu',
  date: Date.today + 20.hours,
  level_rating: 2,
  user: user3
)

match3 = Match.create!(
  address: '14 Rue Michel le Comte, 75003 Paris',
  comment: 'Training ce soir les gars venez si vous etes chaud',
  date: Date.today + 19.hours,
  level_rating: 3,
  user: user4
)

match4 = Match.create!(
  address: '14 Rue des Jardins Saint-Paul, 75004 Paris',
  comment: 'Match tranquil ;)',
  date: Date.today + 2.days + 14.hours,
  level_rating: 1,
  user: user5
)

match5 = Match.create!(
  address: '39 bis Rue Poliveau, 75005 Paris',
  comment: 'Tray hard only !',
  date: Date.today + 1.days + 16.hours,
  level_rating: 2,
  user: user6
)

match6 = Match.create!(
  address: '87 Rue de Vaugirard, 75006 Paris',
  comment: 'Shaquille O Neal est sur le terrain les gars !  On va faire pleins de  1 contre 1 !',
  date: Date.today + 5.days + 15.hours,
  level_rating: 3,
  user: user7
)

match7 = Match.create!(
  address: 'Avenue Pierre Loti, 75007 Paris',
  comment: 'Training sur les shoot ce soir, tout niveau accepté',
  date: Date.today + 13.hours,
  level_rating: 1,
  user: user8
)

match8 = Match.create!(
  address: '7 All. Louis de Funès, 75008 Paris',
  comment: 'Concour de shoot ! et/ou de dunks pour les gars les plus deter !',
  date: Date.today + 2.days + 14.hours,
  level_rating: 2,
  user: user9
)
match9 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'Bonne ambiance, très chill',
  date: Date.today + 1.days + 16.hours,
  level_rating: 1,
  user: user10
)

match10 = Match.create!(
  address: '116 quai de Jemmapes, 75010 Paris',
  comment: 'Stephen Curry, aka the shooter est sur le terrain.. les gars on a besoin de 3 goats pour le battre, ça va être le feu !',
  date: Date.today + 4.days + 15.hours,
  level_rating: 1,
  user: user11
)

match11 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'je prend tout le monde en 1v1',
  date: Date.today + 1.days + 16.hours,
  level_rating: 2,
  user: user12
)

match12 = Match.create!(
  address: '17 Rue Boy-Zelenski, 75010 Paris',
  comment: 'Only gods can come !',
  date: Date.today + 19.hours,
  level_rating: 3,
  user: user13
)
match13 = Match.create!(
  address: '68 boulevard poniatowski, 75012 Paris',
  comment: 'Le perdant offre à boire',
  date: Date.today + 2.days + 8.hours,
  level_rating: 1,
  user: user14
)

match14 = Match.create!(
  address: '234 Boulevard de la Villette, 75019 Paris',
  comment: 'only 3points',
  date: Date.today + 3.days + 10.hours,
  level_rating: 3,
  user: user15
)

match15 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'Do not be affraid about my skills',
  date: Date.today + 20.hours,
  level_rating: 2,
  user: user16
)

match16 = Match.create!(
  address: '101 Quai Jacques Chirac, 75015 Paris',
  comment: 'Je veux devenir coach pour les pro, je donne un cours de basket ce soir.(debutant-intermédiaire only)',
  date: Date.today + 9.hours,
  level_rating: 2,
  user: user17
)
match17 = Match.create!(
  address: '2 Rue Jean Sicard, 75015 Paris',
  comment: 'Je veux apprendre ce sport, si toi aussi tu veux aprendre ou que tu es fort, tu es le bienvenue.',
  date: Date.today + 1.days + 16.hours,
  level_rating: 1,
  user: user18
)

match18 = Match.create!(
  address: '2 Rue du Commandant Guilbaud, 75016 Paris',
  comment: 'Luka Dončić will come, so litlle guys do not come please.',
  date: Date.today + 6.days + 15.hours,
  level_rating: 3,
  user: user19
)

match19 = Match.create!(
  address: '8 Avenue de la Porte de Clichy, 75017 Paris',
  comment: 'Training du soir, bonsoir',
  date: Date.today + 9.hours,
  level_rating: 2,
  user: user20
)

match20 = Match.create!(
  address: '56 Rue Aubervilliers, 75018 Paris',
  comment: 'Petit concours de drible pour etre comme Kyrie Irvin',
  date: Date.today + 2.days + 14.hours,
  level_rating: 3,
  user: user21
)
match21 = Match.create!(
  address: '30 Rue Louis Lumière, 75020 Paris',
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
  user: user11
)

match23 = Match.create!(
  address: '61 boulevard Vincent Auriol, 75013 Paris',
  comment: 'Petit match pour décompresser',
  date: Date.today + 19.hours,
  level_rating: 1,
  user: user15
)

match24 = Match.create!(
  address: '22 Rue Duperré, 75009 Paris',
  comment: 'On retaffe les bases et petits jeux, venez si vous etes chauds ! (HORSE, lucky luke ou 21)',
  date: Date.today + 9.days + 14.hours,
  level_rating: 2,
  user: user8
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
  user: user13,
  team: match1.teams.last
)

participation6 = Participation.create(
  user: user7,
  team: match2.teams.first
)
participation7 = Participation.create(
  user: user8,
  team: match2.teams.first
)
participation8 = Participation.create(
  user: user9,
  team: match3.teams.last
)
team = match7.teams.last
team.name = "#{user20.pseudo}'s teams"

participation9 = Participation.create(
  user: user5,
  team: match7.teams.last
)
participation10 = Participation.create(
  user: user16,
  team: match7.teams.last
)

participation11 = Participation.create(
  user: user6,
  team: match22.teams.first
)
participation12 = Participation.create(
  user: user3,
  team: match19.teams.first
)
participation13 = Participation.create(
  user: user4,
  team: match17.teams.last
)
team = match20.teams.last
team.name = "#{user11.pseudo}'s teams"

participation14 = Participation.create(
  user: user5,
  team: match20.teams.last
)
participation15 = Participation.create(
  user: user15,
  team: match20.teams.last
)

participation16 = Participation.create(
  user: user6,
  team: match10.teams.first
)
participation17 = Participation.create(
  user: user3,
  team: match10.teams.first
)
participation18 = Participation.create(
  user: user4,
  team: match13.teams.last
)
team = match19.teams.last
team.name = "#{user15.pseudo}'s teams"

participation20 = Participation.create(
  user: user5,
  team: match13.teams.last
)

participation21 = Participation.create(
  user: user6,
  team: match11.teams.first
)
participation22 = Participation.create(
  user: user3,
  team: match11.teams.first
)
participation23 = Participation.create(
  user: user4,
  team: match11.teams.last
)
team = match1.teams.last
team.name = "#{user4.pseudo}'s teams"

participation24 = Participation.create(
  user: user5,
  team: match11.teams.last
)
participation25 = Participation.create(
  user: user13,
  team: match11.teams.last
)

participation26 = Participation.create(
  user: user4,
  team: match9.teams.last
)
team = match1.teams.last
team.name = "#{user4.pseudo}'s teams"

participation27 = Participation.create(
  user: user5,
  team: match9.teams.last
)
participation28 = Participation.create(
  user: user13,
  team: match24.teams.last
)

participation29 = Participation.create(
  user: user20,
  team: match9.teams.last
)
participation30 = Participation.create(
  user: user16,
  team: match24.teams.last
)

participation31 = Participation.create(
  user: user4,
  team: match15.teams.last
)
team = match1.teams.last
team.name = "#{user4.pseudo}'s teams"

participation32 = Participation.create(
  user: user5,
  team: match23.teams.last
)
participation33 = Participation.create(
  user: user13,
  team: match15.teams.last
)

participation34 = Participation.create(
  user: user20,
  team: match23.teams.last
)
participation35 = Participation.create(
  user: user16,
  team: match15.teams.last
)
