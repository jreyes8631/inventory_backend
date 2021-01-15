# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first

category = user.categories.find_or_create_by(title: "kitchen", description:"office")


item1 = category.items.find_or_create_by(name: "dish", quantity: 10, color: "white", details: "new", user_id: user.id)
item2 = category.items.find_or_create_by(name: "cups", quantity: 10, color: "white", details: "new", user_id: user.id)
item3 = category.items.find_or_create_by(name: "pan", quantity: 10, color: "black", details: "new", user_id: user.id)

