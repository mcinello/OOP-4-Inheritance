class Farm

# farm wants to keep track of fields on the farm (corn and wheat)
  @@fields = []

  # total amount of food farm has produced
  def self.total_amount_of_food
    sum = 0
    @@fields.each do |food|
      sum += food
    end
    return sum
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

  def field_type(type)
    @field_type = type
    @field_type
  end

  def food_per_hectare(num)
    @food_per_hectare = num
    @food_per_hectare
  end

end
