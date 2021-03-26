require 'recipe'

describe Recipe do
  describe '#initialize' do
    it 'creates an instance of Recipe' do
      recipe = Recipe.new('pancakes', 'flour, eggs and milk')
      expect(recipe.name).to eq('pancakes')
    end
  end
end
