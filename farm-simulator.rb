
class Farm

  def initialize
    @fields = []
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_command = gets.chomp
      call_option(user_command)
    end
  end

  def print_main_menu
    puts "--------------------"
    puts "Options:"
    puts " field -> adds a new field"
    puts " harvest -> harvests crops and adds to total harvested"
    puts " status -> displays some information about the farm"
    puts " relax -> provides lovely descriptions of your fields"
    puts " exit -> exits the program"
    puts "--------------------"
    print '>> '
  end

  def call_option(user_command)
    case user_command
      when "field" then field
      when "harvest" then harvest
      when "status" then status
      when "relax" then relax
      when "exit" then abort("Goodbye!")
    end
  end


# add field to farm
  def field
    puts "What kind of field is it: corn or wheat?"
    user_field_input = gets.chomp
    puts "How large is the field in hectares?"
   user_hectare_input = gets.to_i

    if user_field_input == "corn"
      new_field = Corn.new(user_field_input, user_hectare_input)
    elsif user_field_input == "wheat"
      new_field = Wheat.new(user_field_input, user_hectare_input)
    end
    puts "Added a #{user_field_input} field of #{user_hectare_input} hectares!"
    @fields << new_field
  end

  # Adds all hectares of food
  def total_amount_of_food
    sum = 0
    @fields.each do |food|
      sum += food.hectares
    end
    return sum
  end

  # total amount of food farm has produced
  def harvest
    puts "The farm has #{total_amount_of_food} harvested food so far."
  end

# Farm's status
  def status
    @fields.each do |field|
      puts "#{field.name.capitalize} field is #{field.hectares} hectares."
    end
      puts harvest
  end

# Lovely description of farm
  def relax
    sum = 0
    @fields.each do |field|
      if field.is_a?(Wheat)
        sum += field.hectares
      end
    end

    puts "#{total_amount_of_food} hectares tall of green stalks rustling in the breeze fill your horizon."
    puts "The sun hangs low, casting an orange glow on a sea of #{sum} hectares of wheat." # how do I get this to display?
  end

  def fields
    puts @fields
  end

end

class Field
  def initialize(name, num)
    @name = name
    @hectares = num.to_i
  end

  def name
    @name
  end

  def hectares
    @hectares
  end
end


class Corn < Field

end

class Wheat < Field

end

farm = Farm.new
farm.main_menu

# adding field to farm
# Farm.field
# Farm.fields
# Corn.status
