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
Girlfriend.destroy_all
puts "seeding a database..."
20.times do
  Offer.create(
    message: "Sample message",
    date_offered: Date.today + rand(365),
    girlfriend_id: Girlfriend.last.id,
    user_id: User.last.id
  )
end
