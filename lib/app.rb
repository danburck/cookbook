require_relative 'cookbook'
require_relative 'recipe'

csv_file_path = File.join(__dir__, 'recipes.csv')
cookbook = Cookbook.new(csv_file_path)
p cookbook.all

potatoe = Recipe.new('potatoes', 'lots of potatoes')

# cookbook.add_recipe(potatoe)
cookbook.remove_recipe(2)
