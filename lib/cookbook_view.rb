class CookbookView
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_for(thing)
    puts "What is the #{thing}?"
    gets.chomp
  end
end
