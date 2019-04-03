require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}
  it "prints boolean true" do
    expect(subject.working?).to eq(true)
  end
end
