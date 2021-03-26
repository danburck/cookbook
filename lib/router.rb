class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts 'Welcome to the Cookbook👩‍🍳👨‍🍳'
    puts '-----------------------'
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
    puts '1 - List all recipes'
    puts '2 - Create a new recipe'
    puts '3 - Remove a recipe'
    puts '100 - Close cookbook'
  end

  def route_action(action)
    case action
      when 1 then @controller.list
      when 2 then @controller.create
      when 3 then @controller.destroy
      when 100 then stop
      else
        puts 'Please choose one of the actions above.'
    end
  end

  def stop
    puts 'Good bye 👋'
    sleep(1)
    @running = false
  end
end
