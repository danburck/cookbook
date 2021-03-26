require_relative 'cookbook_view'

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
end
