require_relative 'cookbook_view'
require_relative 'recipe'

class CookbookController
  def initialize(cookbook)
    @cookbook = cookbook
    @view = CookbookView.new
  end

  def list
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def create
    name = @view.ask_for('name')
    description = @view.ask_for('description')
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    list
    recipe_index = @view.ask_for('recipe number you would like to destroy')
    @cookbook.remove_recipe(recipe_index.to_i - 1)
  end

  def mark_as_done
    list
    index = @view.ask_for("number of recipe you would like to mark as 'done'").to_i - 1
    @cookbook.all[index].done!
    @cookbook.update_csv
    list
  end
end
