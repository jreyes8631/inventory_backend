# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: 'test2@test.com', password: 'password2')

category = user.categories.find_or_create_by(title: "Home", description:"kitchen")


item = category.items.find_or_create_by(name: "dish", quantity: 10, color: "white", details: "new")

