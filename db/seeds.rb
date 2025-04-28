# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# ####################################################################################################################

# #######################################################################
# CLEAN THE DATABASE
puts 'Clean the database'
Ingredient.destroy_all
Recipe.destroy_all
Collection.destroy_all

# #######################################################################
# ADD COLLECTIONS
puts 'Start creating recipes...'
fond_de_pates = Collection.create!(name: 'Fond de pâtes')
tapas = Collection.create!(name: 'Tapas & amuses-bouches')
tartinades = Collection.create!(name: 'Tartinades')
salades = Collection.create!(name: 'Salades')
soupe = Collection.create!(name: 'Soupe')
terrines = Collection.create!(name: 'Terrines')
plats = Collection.create!(name: 'Plats')
sauces = Collection.create!(name: 'Sauces')
boissons = Collection.create!(name: 'Boissons')
tartes = Collection.create!(name: 'Tartes & Gâteaux')
mousses = Collection.create!(name: 'Mousses & Crèmes')
puts 'End creating recipes...'

# #######################################################################
# ADD RECIPES
puts 'Start creating recipes...'

gateau_au_chocolat = Recipe.create!(
  name: "gâteau au chocolat",
  nb_people: 6,
  prepa_time: 15,
  cooking_time: 20,
  instructions: "le contenu de la recette au gâteau au chocolat.",
  collection_id: tartes.id
)
puts 'Creating gâteau au chocolat ok.'

pate_brisee = Recipe.create!(
  name: "pâte brisée",
  nb_people: 6,
  prepa_time: 10,
  cooking_time: 15,
  instructions: "le contenu de la recette de la pâte brisée.",
  collection_id: fond_de_pates.id
)
puts 'Creating pâte brisée ok.'

puts 'End creating recipes...'

# #######################################################################
# ADD INGREDIENTS
puts 'Start creating ingredients...'

# ingredients for "gateau_au_chocolat"
gateau_au_chocolat_farine = Ingredient.create!(
  name: "farine",
  unit: "g",
  quantity: 250.0,
  recipe_id: gateau_au_chocolat.id
)
gateau_au_chocolat_chocolat = Ingredient.create!(
  name: "chocolat noir",
  unit: "g",
  quantity: 200.0,
  recipe_id: gateau_au_chocolat.id
)
gateau_au_chocolat_oeufs = Ingredient.create!(
  name: "oeufs",
  unit: "unité",
  quantity: 3,
  recipe_id: gateau_au_chocolat.id
)
puts 'Creating ingredients for gâteau au chocolat ok.'

# ingredients for "pate_brisee"
pate_brisee_farine = Ingredient.create!(
  name: "farine",
  unit: "g",
  quantity: 200.0,
  recipe_id: pate_brisee.id
)
puts 'Creating ingredients for pâte brisée ok.'

puts 'End creating ingredients...'
