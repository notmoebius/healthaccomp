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

puts "les users"
10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  orga = Faker::University.name
  # puts "#{first_name}.#{last_name}@yopmail.com"
  User.create!(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name}.#{last_name}@yopmail.com",
  )
end
puts "-->users has been filled"

puts "Je charge le jeu de données"
puts "les signalements"
Report.create(label: Faker::Book.title, descrption: Faker::Lorem.paragraph, visible: true)
Report.create(label: Faker::Book.title, descrption: Faker::Lorem.paragraph, visible: true)
Report.create(label: Faker::Book.title, descrption: Faker::Lorem.paragraph, visible: true)
Report.create(label: Faker::Book.title, descrption: Faker::Lorem.paragraph, visible: true)
puts "-->Report has been filled"

puts "les actions ou todo liste"
Todo.create(label: Faker::ProgrammingLanguage.name, action_desc: Faker::Lorem.paragraph, report_id: Report.all.sample.id)
Todo.create(label: Faker::ProgrammingLanguage.name, action_desc: Faker::Lorem.paragraph, report_id: Report.all.sample.id)
Todo.create(label: Faker::ProgrammingLanguage.name, action_desc: Faker::Lorem.paragraph, report_id: Report.all.sample.id)
Todo.create(label: Faker::ProgrammingLanguage.name, action_desc: Faker::Lorem.paragraph, report_id: Report.all.sample.id)
puts "-->todo has been filled"

puts "les mots clés"
Keyword.create(label: Faker::Food.vegetables, report_id: Report.all.sample.id)
Keyword.create(label: Faker::Food.vegetables, report_id: Report.all.sample.id)
Keyword.create(label: Faker::Food.vegetables, report_id: Report.all.sample.id)
Keyword.create(label: Faker::Food.vegetables, report_id: Report.all.sample.id)
puts "-->keywords has been filled"

