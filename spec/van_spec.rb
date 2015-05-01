require 'Van'
require 'DockingStation'

describe Van do 
	it "takes a broken bike from the docking station" do 
		bike = Bike.new
		docking_station = DockingStation.new
		bike.report_broken
		docking_station.dock double :bike
		subject.collect double :bike
		expect {subject.collect double :bike}.not_to raise_error
	end 

	it "raises an error if the van is full" do 
		docking_station = DockingStation.new
		bike = Bike.new
		subject.capacity.times{subject.collect bike }
		expect{subject.collect double bike}.to raise_error "No room in the van"
	end

	# it "delivers a bike" do 


	# end
end 