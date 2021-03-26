class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts ' -- 👩‍🍳👨‍🍳 My CookBook 👩‍🍳👨‍🍳 --'

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
      puts ''
      puts '-----------------------'
    end
  end

  private

  def display_tasks
    puts 'What would you like to do?'
    puts ''
    puts '1 - List all recipes'
    puts '2 - Create a new recipe'
    puts '3 - Remove a recipe'
    puts "4 - Mark recipe as 'done'"
    puts '100 - Exit'
  end

  def route_action(action)
    case action
      when 1 then @controller.list
      when 2 then @controller.create
      when 3 then @controller.destroy
      when 4 then @controller.mark_as_done
      when 100 then stop
      else
        puts 'Please choose one of the actions above.'
    end
  end

  def stop
    puts 'Good bye chef 👋'
    sleep(1)
    @running = false
  end
end
