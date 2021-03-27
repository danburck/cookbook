class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def done!
    @done = true
  end
end
