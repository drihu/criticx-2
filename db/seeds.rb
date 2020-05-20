# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create!(
  name: 'Valve',
  description: 'Creator of Dota 2 and Underlords',
  start_date: '2005-12-14',
  country: 'EE.UU.',
)

Game.create!(
  name: 'Rune Factory 4 Special',
  genre: 'Role-playing (RPG)',
  price: 5999,
  release_date: '2019-07-25',
  company_id: 1,
)

game = Game.new(
  name: 'Borderlands 3',
  genre: 'Simulator',
  price: 5999,
  release_date: '2019-09-13',
  company_id: 1,
)
game.save

games = [
  {:name=>"Zombie Driver: Immortal Edition", :genre=>"Racing", :price=>5999, :release_date=>"2019-Jul-25", :company_id=>1},
  {:name=>"Remnant: From the Ashes", :genre=>"Shooter", :price=>6999, :release_date=>"2019-Aug-20", :company_id=>1},
  {:name=>"Monster Hunter: World - Iceborne", :genre=>"Adventure", :price=>6999, :release_date=>"2019-Sep-06", :company_id=>1},
  {:name=>"Cyberpunk 2077", :genre=>"Role-playing (RPG)", :price=>4999, :release_date=>"2020-Sep-17", :company_id=>1},
  {:name=>"Pokémon Shield", :genre=>"Role-playing (RPG)", :price=>5999, :release_date=>"2019-Nov-15", :company_id=>1},
  {:name=>"Children of Morta", :genre=>"Role-playing (RPG)", :price=>6999, :release_date=>"2019-Sep-03", :company_id=>1},
]
games.each { |game| Game.create!(game) }
