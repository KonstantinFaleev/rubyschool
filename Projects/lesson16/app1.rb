class Animal
  def initialize name
    @name = name
  end
  def run
    puts "#{@name} is running..."
  end

  def jump
    eat
    puts "#{@name} is jumping..."
    sleep
  end

  private

  def eat
    puts "I am eating"
  end

  def sleep
    puts "I am sleeping"
  end
end

animal = Animal.new 'cat'
animal.jump