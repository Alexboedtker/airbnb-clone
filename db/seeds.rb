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
    puzzle = Puzzle.new(    title: "The Bake Off", size: 1000, description: "Beautiful puzzles. Very high quality. They provide a lot of fun", price: 12, address: "Bellerivestrasse 138, 8008 Zürich", user: user)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/The_Bake_Off_1000.jpg")), filename: "The_Bake_Off_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(    title: "Black", size: 736, description: "Great puzzles. Very high quality. They provide a lot of fun", price: 15, address: "Sechseläutenpl. 1, 8008 Zürich", user: user)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Black_736.jpeg")), filename: "Black_736.jpeg")
    puzzle.save!
  end
end

puts("Second user")

1.times do
  user2 = User.new(  email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qazwsx")
  user2.save!

  1.times do
    puzzle = Puzzle.new(    title: "Cartoon", size: 1000, description: "Beautiful puzzles. Very high quality. They provide a lot of fun", price: 12, address: "Gablerstrasse 15, 8002 Zürich", user: user2)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Cartoon_1000.jpg")), filename: "Cartoon_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(    title: "Japan", size: 3000, description: "Great puzzles. Very high quality. Lots of pieces, lots of fun!", price: 25, address: "Limmatstrasse 270, 8005 Zürich", user: user2)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Japan_3000.jpg")), filename: "Japan_3000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(    title: "Jellyfish", size: 1000, description: "Great puzzles. Very high quality and unique style. Lots of fun!", price: 15, address: "Schokoladenplatz 1, Seestrasse 204, 8802 Kilchberg", user: user2)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Jellyfish_1000.jpg")), filename: "Jellyfish_1000.jpg")
    puzzle.save!
  end
end

puts("Third user")

1.times do
  user3 = User.new(  email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qazwsx")
  user3.save!

  1.times do
    puzzle = Puzzle.new(    title: "Nature", size: 1000, description: "Beautiful puzzles. Very high quality. They provide a lot of fun", price: 12, address: "Alte Landstrasse 121, 8702 Zollikon", user: user3)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Nature_1000.jpeg")), filename: "Nature_1000.jpeg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(    title: "Nordic", size: 3000, description: "Very high quality. Lots of pieces, lots of fun!", price: 25, address: "Seestrasse 493, 8038 Zürich", user: user3)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Nordic_3000.jpg")), filename: "Nordic_3000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(    title: "Panorama", size: 1000, description: "Good puzzles. Very high quality. Unique shape. Lots of fun!", price: 15, address: "Witellikerstrasse 40, 8032 Zürich", user: user3)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Panorama_1000.jpeg")), filename: "Panorama_1000.jpeg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(    title: "Palma", size: 1500, description: "Good puzzles. Very high quality. They provide a lot of fun!", price: 17, address: "Nordstrasse 88, 8037 Zürich", user: user3)
    puzzle.photo.attach(    io: File.open(Rails.root.join("app/assets/images/Palma_1500.jpeg")), filename: "Palma_1500.jpeg")
    puzzle.save!
  end
end

puts("Finshed!!")
