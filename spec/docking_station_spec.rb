require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  #it "releases working bike" do
    #bike = subject.release_bike
    #expect(bike).to be_working
  #end

  describe '#release_bike' do
    it 'releases bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "raises error when no bikes available" do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end
  end
  describe '#dock' do
    it "can you dock bike?" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it "raises error when trying to return bike to full dock" do
      bike1 = Bike.new
      bike2 = Bike.new
      subject.dock(bike1)
      expect {subject.dock(bike2)}.to raise_error("docking station is full")
    end
  end
  it { is_expected.to respond_to(:dock).with(1).argument }

end
