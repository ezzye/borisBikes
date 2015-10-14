class DockingStation

  attr_reader :bike

  def initialise
  end

  def release_bike
    raise "No bikes available" unless @bike
    @bike
  end

  def available?
    false
  end

  def dock(bike)
    @bike = bike
  end

end

