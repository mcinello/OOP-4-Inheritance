class Person

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greeting
    puts "Hi, my name is #{name}"
  end

end


class Student < Person

  def learn
    puts "I get it!"
  end

end





class Instructor < Person

  def teach
    puts "Everything in Ruby is an object"
  end

end


instructor = Instructor.new("Nadia")

instructor.greeting

student = Student.new("Chris")

student.greeting

instructor.teach

student.learn

student.teach #doesn't work because student did not inherit the Instructor class
