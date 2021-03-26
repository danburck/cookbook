class Recipe
  attr_reader :name
  def initialize(name, description)
    @name = name
    @description = description
  end
end
