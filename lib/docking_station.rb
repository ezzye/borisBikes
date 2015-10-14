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
    raise "Docking station full" if @bike
    @bike = bike
  end

end

