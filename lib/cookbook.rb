require_relative 'recipe'
require 'csv'

class Cookbook
  def initialize(csv_file_path)
    @csv_file = csv_file_path
    @recipes = []
    load_from_csv(csv_file_path)
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    save_to_csv
  end

  def update_csv
    save_to_csv
  end

  private

  def load_from_csv(csv_file_path)
    CSV.foreach(csv_file_path) do |row|
      recipe = Recipe.new(row[0], row[1])
      recipe.done! if row[2] == 'true'
      @recipes << recipe
    end
  end

  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.done?]
      end
    end
  end
end
