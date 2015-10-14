
require 'docking_station'

# docking_station = DockingStation.new
# bike = docking_station.release_bike


describe DockingStation do
  it { is_expected.to(respond_to(:release_bike)) }
  it { is_expected.to(respond_to(:dock).with(1).argument) }
  it { is_expected.to(respond_to(:bikes)) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)[-1]).to eq bike
  end


  describe "#dock(bike)" do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes[-1]).to eq bike
    end
    it 'does not raise an error when docking below capacity' do
      19.times do
          bike = Bike.new
          subject.dock(bike)
        end
        bike = Bike.new
        subject.dock(bike)
      expect(subject.bikes[-1]).to eq bike
    end


    # it 'raises an error when docking at capacity' do
    #   expect { 21.times do
    #       bike = Bike.new
    #       subject.dock(bike)
    #     end
    #   }.to raise_error "Docking station full"
    # end

  end

    describe "#release_bike" do
        it 'releases a bike' do
          bike = Bike.new
          subject.dock(bike)
          expect(subject.release_bike).to eq bike
      end
        it 'raises an error when there are no bikes available' do
          expect { subject.release_bike }.to raise_error "No bikes available"
      end
  end

end

#does sending a massage to dock bike to docking station set docked to true

#does sending a message to check if bike to docking station respond with true is bike docked

  # it "docking a bike should set bike docked to true" do
  #   expect(docking_station.dock_bike(bike)).to eq true
  #   expect(docking_station.empty?).to eq false
  #   end


