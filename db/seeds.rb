# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

puts 'Starting seeding!'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
array = JSON.parse(user_serialized)

array['drinks'].each do |ingredient|
  new_ingredient = Ingredient.new
  new_ingredient.name = ingredient['strIngredient1']
  new_ingredient.save
puts new_ingredient.name
end

puts 'Finished!'

