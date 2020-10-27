# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "je fais du ménage avant de jouer"
puts "Emptying tables"
Report.destroy_all
Todo.destroy_all
User.destroy_all
Keyword.destroy_all
puts "--> All tables are empty"

puts "Je charge le jeu de données"
puts "les signalements"
Report.create(label: Faker::Book.title, description: Faker::Lorem.paragraph, visible: true)
Report.create(label: Faker::Book.title, description: Faker::Lorem.paragraph, visible: true)
Report.create(label: Faker::Book.title, description: Faker::Lorem.paragraph, visible: true)
Report.create(label: Faker::Book.title, description: Faker::Lorem.paragraph, visible: true)

puts "les users"
10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  # puts "#{first_name}.#{last_name}@yopmail.com"
  User.create!(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name}.#{last_name}@yopmail.com",
  )
end
puts "-->users has been filled"

puts "les actions ou todo liste"
Todo.create(label: Faker::ProgrammingLanguage.name, description: Faker::Lorem.paragraph )
Todo.create(label: Faker::ProgrammingLanguage.name, description: Faker::Lorem.paragraph )
Todo.create(label: Faker::ProgrammingLanguage.name, description: Faker::Lorem.paragraph )
Todo.create(label: Faker::ProgrammingLanguage.name, description: Faker::Lorem.paragraph )
puts "-->todo has been filled"

puts "les amots clés"
Todo.create(label: Faker::Source.hello_world, description: Faker::Lorem.paragraph )
Todo.create(label: Faker::Source.hello_world, description: Faker::Lorem.paragraph )
Todo.create(label: Faker::Source.hello_world, description: Faker::Lorem.paragraph )
Todo.create(label: Faker::Source.hello_world, description: Faker::Lorem.paragraph )
puts "-->keywords has been filled"