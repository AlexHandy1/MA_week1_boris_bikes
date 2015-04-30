require 'DockingStation'

describe DockingStation do
	it {is_expected.to respond_to :release_bike }
	it {is_expected.to respond_to(:dock).with(1).argument}

	describe 'dock' do 
		it "should raise an error when full" do
			docking_station = DockingStation.new 30
			subject.capacity.times{subject.dock double(:bike)}
			expect{subject.dock double(:bike)}.to raise_error "NO MORE BIKES PLEASE"
		end
	end

	it 'releases working bikes' do
	    subject.dock Bike.new #replace with a double
	    bike = subject.release_bike
	    expect(bike).to be_working
  	end

	describe "release_bike" do
		it 'raises an error when there is no bike available' do
			expect {subject.release_bike}.to raise_error "No Bikes Available"
		end
		it 'raises an error when there is a broken bike' do
			bike = Bike.new #replace with a double
			bike.report_broken
			subject.dock bike
			expect { subject.release_bike }.to raise_error 'Bike not working'
		end
	end 
end