class Farm

# farm wants to keep track of fields on the farm (corn and wheat)
  @@fields = []

# add field to farm
  def self.field(field)
    @@fields << field
  end

  # total amount of food farm has produced
  def self.harvest
    sum = 0
    @@fields.each do |food|
      sum += food.food_per_hectare
    end
    puts "The farm has #{sum} harvested food so far."
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
