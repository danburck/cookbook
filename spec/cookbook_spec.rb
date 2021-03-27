require 'csv'
require 'cookbook'

class Helper
  def self.write_csv(file, data)
    CSV.open(file, 'w') do |csv|
      data.each do |row|
        csv.puts(row)
      end
    end
  end
end

describe Cookbook do
  let (:recipes) do
    [
      ['Crumpets', 'Crumpets description'],
      ['Beans & Bacon breakfast', 'Beans description'],
      ['Plum pudding', 'Pudding description'],
      ['Apple pie', 'Apple pie description'],
      ['Christmas crumble', 'Crumble description']
    ]
  end

  let(:csv_path) { 'spec/recipes.csv' }

  before do
    Helper.write_csv(csv_path, recipes)
    @cookbook = Cookbook.new(csv_path)
  end

  describe '#initialize' do
    it 'creates a new cookbook and loads recipes for the CSV' do
      expect(@cookbook.all.length).to eq(recipes.length)
    end
  end

  describe '#all' do
    it 'gives acces to all recipes' do
      expect(@cookbook).to respond_to :all
      expect(@cookbook.all).to be_a Array
    end

    it 'should return array of Recipe instances' do
      first_recipe = @cookbook.all.first
      expect(first_recipe).to be_instance_of(Recipe)
    end
  end

  describe '#add_recipe' do
    it 'adds a recipe to the cookbook' do
      size_before = @cookbook.all.length
      @cookbook.add_recipe(Recipe.new('Risotto', 'Good stuff'))

      new_cookbook = Cookbook.new(csv_path)
      expect(new_cookbook.all.length).to eq(size_before + 1)
    end
  end

  describe '#remove_recipe' do
    it 'removes a recipe from the cookbook' do
      size_before = @cookbook.all.length
      @cookbook.remove_recipe(0)

      new_cookbook = Cookbook.new(csv_path)
      expect(new_cookbook.all.length).to eq(size_before - 1)
    end
  end
end
