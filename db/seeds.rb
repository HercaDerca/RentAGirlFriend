# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "cleaning the daabase..."
Offer.destroy_all
Girlfriend.destroy_all

puts "seeding a database..."


girlfriend =  Girlfriend.create(
    name: "Emma Harrison",
    age: Faker::Number.between(from: 18, to: 40),
    location: Faker::Address.city,
    bio: "Lover of sunsets and beach walks. Yoga enthusiast with a passion for traveling and trying new cuisines. Let's explore the world together and create unforgettable memories.",
    user_id: User.last.id
  )

  file = URI.open("https://i.pinimg.com/564x/1f/7a/c3/1f7ac31324d658cf7549e015b93007c2.jpg")

  girlfriend.photo.attach(io: file, filename: "pfp.png", content_type: "image/png")

  girlfriend = Girlfriend.create(
    name: "Sophia Bennett",
    age: Faker::Number.between(from: 18, to: 40),
    location: Faker::Address.city,
    bio: "Musician at heart, bookworm by nature. I enjoy cozy nights in with a good book or movie, but I'm always up for a concert or live show. Looking for someone who loves music as much as I do.",
    user_id: User.last.id
  )

  file = URI.open("https://i.pinimg.com/564x/da/ea/70/daea7091d97ad7b676dacd6af6a917dd.jpg")

  girlfriend.photo.attach(io: file, filename: "pfp.png", content_type: "image/png")
  girlfriend = Girlfriend.create(
    name: "Olivia Parker",
    age: Faker::Number.between(from: 18, to: 40),
    location: Faker::Address.city,
    bio: "Fitness fanatic and health nut. When I'm not at the gym, you can find me experimenting with new healthy recipes or enjoying a long run. Looking for someone who values a healthy lifestyle and loves to stay active.",
    user_id: User.last.id
  )

  file = URI.open("https://i.pinimg.com/564x/45/e5/e0/45e5e0e4fc03d8ad245095c7e32b88e8.jpg")

  girlfriend.photo.attach(io: file, filename: "pfp.png", content_type: "image/png")
  girlfriend = Girlfriend.create(
    name: "Isabella Collins",
    age: Faker::Number.between(from: 18, to: 40),
    location: Faker::Address.city,
    bio: "Nature lover and adventure seeker. Whether it's hiking in the mountains or kayaking on a lake, I'm always up for an outdoor adventure. Let's explore the great outdoors together!",
    user_id: User.last.id
  )

  file = URI.open("https://i.pinimg.com/564x/8c/f7/cd/8cf7cde15c1053b93c7c97b6d7ea5147.jpg")

  girlfriend.photo.attach(io: file, filename: "pfp.png", content_type: "image/png")
  girlfriend = Girlfriend.create(
    name: "Ava Cooper",
    age: Faker::Number.between(from: 18, to: 40),
    location: Faker::Address.city,
    bio: "Dog mom, coffee addict, and brunch enthusiast. I believe in living life to the fullest and enjoying every moment. Swipe right if you love dogs, good coffee, and weekend brunches.",
    user_id: User.last.id
  )

  file = URI.open("https://i.pinimg.com/564x/44/55/a9/4455a99bf152d5169e0628e6cb27ebdc.jpg")

  girlfriend.photo.attach(io: file, filename: "pfp.png", content_type: "image/png")
