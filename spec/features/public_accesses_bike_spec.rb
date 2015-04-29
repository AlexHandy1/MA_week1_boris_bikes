require 'DockingStation'

feature 'member of public accesses the bike' do
  scenario 'docking station releases a working bike' do
    docking_station = DockingStation.new
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  scenario 'docking station does not release bike when is not available' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'No bikes available'
end
end