# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first

category1 = user.categories.find_or_create_by(title: "Home", description:"kitchen")
category2 = user.categories.find_or_create_by(title: "Home", description:"living room")
category3 = user.categories.find_or_create_by(title: "Home", description:"Room")

item1 = category1.items.find_or_create_by(name: "Dishes", quantity: 30, color: "white", details: "I bought recently", user_id: user.id)
item2 = category1.items.find_or_create_by(name: "Coffee Mugs", quantity: 10, color: "5 whites and 5 blacks", details: "Used in good conditions", user_id: user.id)
item3 = category1.items.find_or_create_by(name: "pan", quantity: 10, color: "black", details: "new", user_id: user.id)

item1 = category2.items.find_or_create_by(name: "Bed", quantity: 1, color: "white", details: "In good condition", user_id: user.id)
item2 = category2.items.find_or_create_by(name: "Table", quantity: 1, color: "Black", details: "This is where I charge my phone", user_id: user.id)
item3 = category2.items.find_or_create_by(name: "pillow", quantity: 1, color: "White", details: "My favorite pillow", user_id: user.id)