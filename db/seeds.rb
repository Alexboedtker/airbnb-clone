# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts("Cleaning up database...")
Booking.destroy_all
Puzzle.destroy_all
User.destroy_all
puts("Database cleaned")
puts("Creating users")
puts("First user")


1.times do
  user = User.new(  email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qwaszx")
  user.photo.attach(    io: File.open(Rails.root.join("app/assets/images/hola-ale.jpeg")), filename: "hola-ale.jpg")
  user.save!

  1.times do
    puzzle = Puzzle.new(title: "The Bake Off", size: 1000, description: "If you are one of those people who say that more is happening - this puzzle is for you! A treat for lovers of long and arduous stacking. We don't want to scare you, but putting these puzzles together is a really big feat! Will you take up the challenge?", price: 12, address: "Bellerivestrasse 138, 8008 Zürich", user: user, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/The_Bake_Off_1000.jpg")), filename: "The_Bake_Off_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Black", size: 736, description: "It might seem that it is boring ... yet great experiences are guaranteed! Everything is different here: shape, size, color - be sure to try it out!", price: 15, address: "Sechseläutenpl. 1, 8008 Zürich", user: user, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Black_736.jpeg")), filename: "Black_736.jpeg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Disney:Princess", size: 40, description: "Fabulous, literally. Enter the world of Disney with our puzzles. Every girl has dreamed of feeling like a princess. Let her - she will definitely be delighted", price: 15, address: "Albisstrasse 33, 8134 Adliswil", user: user, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Disney_Princess_40.jpg")), filename: "Disney_Princess_40.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Kitties", size: 1000, description: "Two cute kittens in one picture! Do you love animals? This is probably the perfect puzzle for you! Very high quality.", price: 17, address: "Nordstrasse 88, 8037 Zürich", user: user, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Kitties_1000.jpg")), filename: "Kitties_1000.jpg")
    puzzle.save!
  end
end

puts("Second user")

1.times do
  user2 = User.new(email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qazwsx")
  user2.photo.attach(io: File.open(Rails.root.join("app/assets/images/Alexboedtker.jpeg")), filename: "Alexboedtker.jpeg")
  user2.save!

  1.times do
    puzzle = Puzzle.new(title: "Cartoon", size: 1000, description: "What awaits you after completing these puzzles? They are like a fairy tale about a bunny that you can tell your baby to sleep. For small and big puzzle lovers.", price: 12, address: "Gablerstrasse 15, 8002 Zürich", user: user2, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Cartoon_1000.jpg")), filename: "Cartoon_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Japan", size: 3000, description: "We'll never get to some places, but we can move in a different way. Only 3000 puzzles from here! We invite you to the world of Japanese architecture and beautiful landscape", price: 25, address: "Limmatstrasse 270, 8005 Zürich", user: user2, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Japan_3000.jpg")), filename: "Japan_3000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Jellyfish", size: 1000, description: "Sea depths enclosed in a small tube? Oh yes! If you want to surprise someone with a cute vintage gift, you should have one! Jellyfish, octopuses and other sea creatures are waiting for you to free them ...", price: 15, address: "Schokoladenplatz 1, Seestrasse 204, 8802 Kilchberg", user: user2, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Jellyfish_1000.jpg")), filename: "Jellyfish_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Geneve", size: 1000, description: "MYPUZZLE Geneve is an invitation to discover the city with inch-perfect precision without GPS.", price: 17, address: "Burghaldenstrasse 3, 8810 Horgen", user: user2, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Geneve_1000.jpg")), filename: "Geneve_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Flowers", size: 1000, description: "Did you paint a still life in your art class? Now you have a unique opportunity to put it together from a puzzle! Still life with flowers from the Museum Collection is waiting for you.", price: 12, address: "Florastrasse 1, 8800 Thalwil", user: user2, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Flowers_1000.jpg")), filename: "Flowers_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Finding Dory", size: 100, description: "Many kids' favorite fairy tale. They will definitely love the Dorry puzzles!The proposal for the youngest, the number and size of the puzzle is not scary and will involve all children without exception.", price: 12, address: "Florastrasse 15, 8800 Thalwil", user: user2, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Finding_Dory_100.jpg")), filename: "Finding_Dory_100.jpg")
    puzzle.save!
  end
end


puts("Third user")

1.times do
  user3 = User.new(email: Faker::Internet.unique.email,   last_name: Faker::Name.unique.first_name,   first_name: Faker::Name.last_name,   password: "qazwsx")
  user3.photo.attach(io: File.open(Rails.root.join("app/assets/images/SzczesnaAg.jpeg")), filename: "SzczesnaAg.jpeg")
  user3.save!

  1.times do
    puzzle = Puzzle.new(title: "Sherlock Holmes", size: 1000, description: "Beautiful puzzles. Very high quality. They provide a lot of fun", price: 17, address: "Schokoladenplatz 1, Seestrasse 204, 8802 Kilchberg", user: user3, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Sherlock Holmes_1000.jpg")), filename: "Sherlock Holmes_1000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Nature", size: 1000, description: "Immerse yourself in an exotic journey with Ravensburger puzzles. A view that is breathtaking. Only 1000 elements separate you from such a beautiful landscape!", price: 12, address: "Alte Landstrasse 121, 8702 Zollikon", user: user3, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Nature_1000.jpeg")), filename: "Nature_1000.jpeg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Nordic", size: 3000, description: "Somewhere in the north there is a small town, the flashing lights in these little houses encourage you to visit. Don't wait for them to go out", price: 25, address: "Seestrasse 493, 8038 Zürich", user: user3, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Nordic_3000.jpg")), filename: "Nordic_3000.jpg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Panorama Venice", size: 1000, description: "Have you sailed the canals of Venice? If so, you will surely guess what the view is! St. Mark in Venice looks really impressive from this perspective.", price: 15, address: "Witellikerstrasse 40, 8032 Zürich", user: user3, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Panorama_1000.jpeg")), filename: "Panorama_1000.jpeg")
    puzzle.save!
  end

  1.times do
    puzzle = Puzzle.new(title: "Palma", size: 1500, description: "Palm trees, sunset on the beach, we all dream about it. If you want to move into such an environment even for a moment, do not hesitate. Such a view on the wall will put you in a good mood, guaranteed!", price: 17, address: "Nordstrasse 88, 8037 Zürich", user: user3, rating: Faker::Number.within(range: 3..5))
    puzzle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Palma_1500.jpeg")), filename: "Palma_1500.jpeg")
    puzzle.save!
  end
end


puts("Finshed!!")
