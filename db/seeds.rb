# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eduard = User.create(email: 'test@test.com', password: 'password')

eduard.categories.build(title: "Home", description:"kitchen").save

eduard.item.build(name: "dish", quantity: 10, color: "white", details: "new").save
