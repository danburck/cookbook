require 'csv'
require 'cookbook'

describe Cookbook do
  let (:recipes) do
    [
      [ 'Crumpets', 'Crumpets description' ],
      [ 'Beans & Bacon breakfast', 'Beans description' ],
      [ 'Plum pudding', 'Pudding description' ],
      [ 'Apple pie', 'Apple pie description' ],
      [ 'Christmas crumble', 'Crumble description' ]
    ]
  end

  let(:csv_path) { "spec/recipes.csv" }

  before do
    @cookbook = Cookbook.new(csv_path)
  end

  describe '#initialize' do
    it 'creates a new cookbook and loads recipes for the CSV' do

    end
  end
end
