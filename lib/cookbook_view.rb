class CookbookView
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      x = recipe.done? ? '[x]' : '[ ]'
      puts "#{index + 1}. #{x} #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_for(thing)
    puts "What is the #{thing}?"
    gets.chomp
  end
end
