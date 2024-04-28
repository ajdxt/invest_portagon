# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

issuances = Issuance.create([
  { name: "Issuance 1", max_amount: 100_000, start_date: Date.new(2021, 1, 1), end_date: Date.new(2021, 12, 31) },
  { name: "Issuance 2", max_amount: 200_000, start_date: Date.new(2021, 1, 1), end_date: Date.new(2021, 12, 31) },
  { name: "Issuance 3", max_amount: 300_000, start_date: Date.new(2021, 1, 1), end_date: Date.new(2021, 12, 31) }
])

users = User.create([
  { name: "John Doe", email: "john@ex.com" },
  { name: "Mark Henry", email: "mark@ex.com" },
  { name: "Rahul", email: "rahul@ex.com" }
])

investments = Investment.create([
  { user: users[0], issuance: issuances[0], amount: 10_000 },
  { user: users[1], issuance: issuances[0], amount: 20_000 },
  { user: users[2], issuance: issuances[0], amount: 30_000 },
  { user: users[0], issuance: issuances[1], amount: 40_000 },
  { user: users[1], issuance: issuances[1], amount: 50_000 },
  { user: users[2], issuance: issuances[1], amount: 60_000 },
  { user: users[0], issuance: issuances[2], amount: 70_000 },
  { user: users[1], issuance: issuances[2], amount: 80_000 },
  { user: users[2], issuance: issuances[2], amount: 90_000 }
])
