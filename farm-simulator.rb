
class Farm

# farm wants to keep track of fields on the farm (corn and wheat)
  @@fields = []

# add field to farm
  def self.field
    puts "What kind of field is it: corn or wheat?"
    user_field_input = gets.chomp
    puts "How large is the field in hectares?"
   user_hectare_input = gets.to_i

    if user_field_input == "corn"
      new_field = Corn.new(user_hectare_input)
    elsif user_field_input == "wheat"
      new_field = Wheat.new(user_hectare_input)
    end

    @@fields << new_field
  end

  # Adds all hectares of food
  def self.total_amount_of_food
    sum = 0
    @@fields.each do |food|
      sum += food.food_per_hectare
    end
    return sum
  end

  # total amount of food farm has produced
  def self.harvest
    puts "The farm has #{Farm.total_amount_of_food} harvested food so far."
  end

# Farm's status
  def self.status
    @@fields.each do |food|
      puts "#{food.field_type} field is #{food.food_per_hectare} hectares."
    end
      puts Farm.harvest
  end

# Lovely description of farm
  def self.relax
    puts "#{Farm.total_amount_of_food} hectares tall of green stalks rustling in the breeze fill your horizon."
    puts "The sun hangs low, casting an orange glow on a sea of #{food_per_hectare} hectares of #{field type}." # how do I get this to display?
  end

  def self.fields
    @@fields
  end

end

class Field

  # field must be a type, and produces a different amount of food per hectare
  def initialize(num)
    @food_per_hectare = num.to_i
  end

  # def self.field_type
  #   @field_type
  # end

  def food_per_hectare
    @food_per_hectare
  end

  # def field_type(type)
  #   @field_type = type
  #   @field_type
  # end
  #
  # def food_per_hectare(num)
  #   @food_per_hectare = num
  #   @food_per_hectare
  # end

end

class Corn < Field

end

class Wheat < Field

end





# adding field to farm
Farm.field
Farm.harvest
Farm.field
Farm.harvest
