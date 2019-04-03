require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  it "give a bike object" do
    expect(subject.release_bike).to eq(:bike)
  end
end
