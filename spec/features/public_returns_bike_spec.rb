require 'DockingStation'

feature "member of public returns the bike" do
	scenario "bike cannot be docked when station is full" do
		docking_station = DockingStation.new
		docking_station.dock Bike.new
		expect{ docking_station.dock Bike.new }.to raise_error "Docking Station Full"
	end
end