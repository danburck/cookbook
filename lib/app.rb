require_relative 'cookbook'
require_relative 'cookbook_controller'
require_relative 'router'
require_relative 'recipe'

csv_file_path = File.join(__dir__, 'recipes.csv')
cookbook = Cookbook.new(csv_file_path)
cookbook_controller = CookbookController.new(cookbook)
router = Router.new(cookbook_controller)

router.run

# recipe = Recipe.new('potatoes', 'lots of potatoes')
