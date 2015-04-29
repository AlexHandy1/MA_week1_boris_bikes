require 'DockingStation'

feature 'member of public accesses the bike' do
  scenario 'docking station releases a working bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
end