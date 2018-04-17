require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it 'returns a bike' do
    bike = subject.release_bike
    expect(bike).to be_an_instance_of(Bike)
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  context 'when bike is docked' do
    it 'returns bike that has been docked' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'shows docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end

  context 'when bike is working' do
    it 'returns a working bike' do
      bike = subject.release_bike
      expect(bike).to be_working
  end

  end
end
