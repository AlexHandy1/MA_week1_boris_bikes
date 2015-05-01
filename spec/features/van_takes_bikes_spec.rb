#user story - I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
require 'Van'
require 'DockingStation'

feature "van takes bike" do 
	xscenario "takes a broken bike from the docking station" do 
			van = Van.new
			bike = Bike.new 
			docking_station = DockingStation.new
			bike.report_broken
			docking_station.dock bike
			expect{ van.collect(docking_station.send_for_repair) }.not_to raise_error
	end

	xscenario "raises an error if tries to take a working bike from docking station" do 

	end

	xscenario "raise an error if not enough space in van" do 

	end

	xscenario "takes a fixed bike from the garage" do 

	end

	xscenario "raises an error if tries to take a broken bike from garage" do 

	end
end
