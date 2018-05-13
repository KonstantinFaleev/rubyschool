class Animal
  def run
    puts "Runnitg..."
  end

  def jump
    puts "Jumping..."
  end
end

class Cat < Animal
  def say_meow
    puts "Meeeeow..."
  end
end

class Dog < Animal
  def bark
    puts "Woof..."
  end
end

cat = Cat.new
cat.run
cat.say_meow

dog = Dog.new
dog.jump
dog.bark