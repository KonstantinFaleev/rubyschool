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

airport = Airport.new 'SVO'

airplane1 = Airplane.new 'Boeing-777'
airplane2 = Airplane.new 'A-320'

airport.add_airplane airplane1
airport.add_airplane airplane2



