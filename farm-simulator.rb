class Farm

# farm wants to keep track of fields on the farm (corn and wheat)
  @@fields = []

# add field to farm
  def self.field(field)
    @@fields << field
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
    puts "The sun hangs low, casting an orange glow on a sea of #{hectare} hectares of #{field_type}." # how do I get this to display?
  end

  def self.fields
    @@fields
  end

end

class Field

  # field must be a type, and produces a different amount of food per hectare
  def initialize(type, num)
    @field_type = type
    @food_per_hectare = num.to_i
  end

  def field_type
    @field_type
  end

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
Farm.field(Field.new("corn", 0))
Farm.field(Field.new("wheat", 0))

puts Farm.harvest
puts Farm.relax
