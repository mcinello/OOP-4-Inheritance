class System

  @@bodies = []

  def self.add(body)
    @@bodies << body
  end

  def total_mass
    sum = 0
    @@bodies.each do |body|
      sum += body
    end
    return sum
  end

  def self.bodies
    @@bodies
  end

end


class Body

  def initialize(name, mass)
    @name = name
    @mass = mass.to_i
  end

  def name
    @name
  end

  def mass
    @mass
  end

  def name=(name)
    @name = name
    return @name
  end

  def mass=(mass)
    @mass = mass
    return @mass
  end

end


class Planet < Body

  def initialize(day, year)
    @day = day #number of hrs for planet to rotate once
    @year = year #number of days it takes for the earth to orbit the planet
  end

  def day
    @day
  end

  def day=(day)
    @day = day
    return @day
  end

  def year
    @year
  end

  def year=(year)
    @year = year
    return @year
  end

end


class Star < Body

  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(type)
    @type = type
    return @type
  end

end


class Moon < Body

  def initialize(month, planet)
    @month = month
    @planet = planet
  end

  def month
    @month
  end

  def month=(month)
    @month = month
    return @month
  end

  def planet
    @planet
  end

  def planet=(planet)
    @planet = planet
    return @planet
  end

end


System.add(Star.new("G-type"))
earth = Planet.new(24, 365)
System.add(earth)
System.add(Moon.new(27, earth))

puts System.bodies.inspect
