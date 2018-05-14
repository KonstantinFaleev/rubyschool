module Humans
  class Manager
    def say_hi
      puts 'Hello'
    end
  end

  class Hipster
    def say_hi
      puts 'Hiiii, yo'
    end
  end

  class Jessie_Pinkman
    def say_hi
      puts 'Hi, bitch!'
    end
  end
end

module Animals
  class Dog

  end

  class Cat

  end
end

hipster = Humans::Hipster.new
hipster.say_hi

cat = Animal::Dog.new