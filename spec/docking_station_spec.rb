require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "releases working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "can you dock bike?" do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq bike
  end


  # it "bike exists in docking station" do
  #    expect bike to exist in docking station
  # end

end
