# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Coca-Cola")
Ingredient.create(name: "Fernet")
Ingredient.create(name: "Champagne")
Ingredient.create(name: "Water")
Cocktail.create(name: "Fernet")
Cocktail.create(name: "Pisco Sour")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Moscow mule")
Cocktail.create(name: "Screwdriver")

