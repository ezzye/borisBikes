class DockingStation

attr_reader :bike

def initialise
end

def release_bike
  Bike.new
end

def dock(bike)
  @bike = bike
end

# def bike
#   @bike
# end


end

class Bike

attr_accessor

def initialise
end

def working?
end

end
