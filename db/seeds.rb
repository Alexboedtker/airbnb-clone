# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts("Cleaning up database...")
Puzzle.destroy_all
User.destroy_all
puts("Database cleaned")
puts("Creating users")
puts("First user")

1.times do
  user = User.new(  email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qwaszx")
  user.save!

  1.times do
    puzzle = Puzzle.new(    title: "The Bake Off",     size: 1000,     description: "Beautiful puzzles. Very high quality. They provide a lot of fun",     price: 12,     user: user)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/The_Bake_Off_1000.jpg")),     filename: "The_Bake_Off_1000.jpg")
  end

  1.times do
    puzzle = Puzzle.new(    title: "Black",     size: 736,     description: "Great puzzles. Very high quality. They provide a lot of fun",     price: 15,     user: user)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Black_736.jpg")),     filename: "Black_736.jpg")
  end
end

puts("Second user")

1.times do
  user2 = User.new(  email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qazwsx")
  user2.save!

  1.times do
    puzzle = Puzzle.new(    title: "Cartoon",     size: 1000,     description: "Beautiful puzzles. Very high quality. They provide a lot of fun",     price: 12,     user: user2)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Cartoon_1000.jpg")),     filename: "Cartoon_1000.jpg")
  end

  1.times do
    puzzle = Puzzle.new(    title: "Japan",     size: 3000,     description: "Great puzzles. Very high quality. Lots of pieces, lots of fun!",     price: 25,     user: user2)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Japan_3000.jpg")),     filename: "Japan_3000.jpg")
  end

  1.times do
    puzzle = Puzzle.new(    title: "Jellyfish",     size: 1000,     description: "Great puzzles. Very high quality and unique style. Lots of fun!",     price: 15,     user: user2)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Jellyfish_1000.jpg")),     filename: "Jellyfish_1000.jpg")
  end
end

puts("Third user")

1.times do
  user3 = User.new(  email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qazwsx")
  user3.save!

  1.times do
    puzzle = Puzzle.new(    title: "Nature",     size: 1000,     description: "Beautiful puzzles. Very high quality. They provide a lot of fun",     price: 12,     user: user3)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Nature_1000.jpg")),     filename: "Nature_1000.jpg")
  end

  1.times do
    puzzle = Puzzle.new(    title: "Nordic",     size: 3000,     description: "Very high quality. Lots of pieces, lots of fun!",     price: 25,     user: user3)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Nordic_3000.jpg")),     filename: "Nordic_3000.jpg")
  end

  1.times do
    puzzle = Puzzle.new(    title: "Panorama",     size: 1000,     description: "Good puzzles. Very high quality. Unique shape. Lots of fun!",     price: 15,     user: user3)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Panorama_1000.jpg")),     filename: "Panorama_1000.jpg")
  end

  1.times do
    puzzle = Puzzle.new(    title: "Palma",     size: 1500,     description: "Good puzzles. Very high quality. They provide a lot of fun!",     price: 17,     user: user3)
    puzzle.save!
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Palma_1500.jpg")),     filename: "Palma_1500.jpg")
  end
end

puts("Finshed!!")
