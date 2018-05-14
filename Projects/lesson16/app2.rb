class Animal
  def initialize name
    @name = name
  end
  def run
    puts "#{@name} is running..."
  end

  def jump
    puts "#{@name} is jumping..."
  end

  private

  def eat
    puts "I am eating"
  end

  def sleep
    puts "I am sleeping"
  end
end

class Cat < Animal

  def initialize
    super 'cat'
  end

  def say_meow
    puts "Meeeeow..."
  end

  def jump
    eat
    puts "#{@name} is jumping..."
    sleep
  end
end

class Dog < Animal

  def initialize
    super 'dog'
  end
  def bark
    eat
    puts "Woof..."
    sleep
  end
end

dog = Dog.new

dog.bark