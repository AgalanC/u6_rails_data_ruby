# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Seed data for the Player, Team, and Trophy models using Faker
require 'faker'

# Clear existing data
Player.destroy_all
Team.destroy_all
Trophy.destroy_all

# Create trophies
trophies = 10.times.map do
  Trophy.create!(
    year: Faker::Number.between(from: 2000, to: 2023),
    trophy_name: Faker::Sports::Football.competition
  )
end

# Create teams
teams = 20.times.map do
  Team.create!(
    team_name: Faker::Sports::Football.team,
    coach: Faker::Name.name
  )
end

# Create players
teams.each do |team|
  11.times do
    player = Player.create!(
      jersey_number: Faker::Number.between(from: 1, to: 99),
      player_name: Faker::Sports::Football.player,
      team: team
    )
    player.trophies << trophies.sample(2) # Each player gets 2 random trophies
  end
end

# Assign trophies to teams
teams.each do |team|
  team.trophies << trophies.sample(3) # Each team gets 3 random trophies
end
