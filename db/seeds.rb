# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts "Delete all ingredients"
Ingredient.destroy_all

puts "Seeding DB with ingredients"

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
serialized_ingredients = open(url).read
ingredients = JSON.parse(serialized_ingredients)
ingredients = ingredients['drinks']

ingredients.each do |ingredient|
  Ingredient.create!(name: "#{ingredient['strIngredient1']}")
end

puts "Ingredients seeded"


puts "Delete all cocktails"
Cocktail.destroy_all
puts "Seeding DB with cocktails"

urlCocktail = "https://raw.githubusercontent.com/teijo/iba-cocktails/master/recipes.json"
serialized_cocktails = open(urlCocktail).read
cocktails = JSON.parse(serialized_cocktails)

p cocktails.class

cocktails.each do |cocktail|
  p cocktail['name']
  Cocktail.create!(name: cocktail['name'])
end

puts "Cocktails seeded"

