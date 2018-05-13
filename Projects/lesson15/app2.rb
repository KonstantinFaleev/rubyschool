class Airport
  attr_reader :name
  attr_reader :airplanes

  def initialize name
    @name = name
    @airplanes = []
  end

  def add_airplane airplane
    @airplanes << airplane
  end
end

class Airplane
  attr_reader :model

  def initialize model
    @model = model
  end
end
airports = []
airport1 = Airport.new 'SVO'
airport2 = Airport.new 'DME'

airports << airport1
airports << airport2

airplane1 = Airplane.new 'Boeing-777'
airplane2 = Airplane.new 'A-320'
airplane3 = Airplane.new 'IL-76'

airport1.add_airplane airplane1
airport1.add_airplane airplane2
airport1.add_airplane airplane3

airplane_a = Airplane.new 'AA1'
airplane_b = Airplane.new 'BB1'
airplane_c = Airplane.new 'CC1'

airport2.add_airplane airplane_a
airport2.add_airplane airplane_b
airport2.add_airplane airplane_c

airports.each do |airport|
  puts "Airport: #{airport.name}"
  airport.airplanes.each do |airplane|
    puts "Airplane: #{airplane.model}"
  end
end