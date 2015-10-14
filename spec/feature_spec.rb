require './lib/docking_station'
require './lib/bike'

docking_station = DockingStation.new
bike1 = Bike.new

20.times do
  bike = Bike.new
  docking_station.dock(bike)
end

p docking_station.bikes

begin
  docking_station2 = DockingStation.new
  docking_station2.release_bike
  rescue Exception => e1
  puts "Test for empty #{e1.inspect} "
end

begin
  21.times do
    bike = Bike.new
    docking_station.dock(bike)
  end
  rescue Exception => e2
  puts "Test for capacity working #{e2.inspect} "
end




