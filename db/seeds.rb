# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Jul", email: Faker::Internet.email)
User.create!(name: "Kond", email: Faker::Internet.email)
User.create!(name: "Kam", email: Faker::Internet.email)
User.create!(name: Faker::Name.name, email: Faker::Internet.email)


users = User.all

25.times do
    Post.create!(
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.paragraphs(number: 5),
        user: users.sample
    )
end