# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
3.times do |i|
  my_user = User.create(email: Faker::Internet.email, password: Faker::Internet.password, name: Faker::TvShows::RickAndMorty.character)
  3.times do
    my_category = Category.new(title: Faker::Book.genre)
    my_category.user = my_user
    my_category.save
    3.times do
      my_task = Task.new(content: Faker::Book.title, deadline: Faker::Date.forward(23))
      my_task.category = my_category
      my_task.save
    end
  end
  puts "Utilisateur(s) ajouté(s) à la db : #{i+1}"
end

20.times do |j|
  email = Email.create(object: Faker::TvShows::RickAndMorty.character, body: Faker::TvShows::RickAndMorty.quote, read: false)
  puts "Email(s) ajouté(s) à la db : #{j+1}"
end
