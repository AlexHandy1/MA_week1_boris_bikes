require 'DockingStation'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
	it { is_expected.to respond_to(:dock).with(1).argument}

	describe 'dock' do 
		it "should raise an error when full" do
			DockingStation::DEFAULT_CAPACITY.times{subject.dock Bike.new}
			expect{subject.dock Bike.new}.to raise_error "NO MORE BIKES PLEASE"
		end
	end

	it 'releases working bikes' do
	    subject.dock Bike.new
	    bike = subject.release_bike
	    expect(bike).to be_working
  	end

	describe "release_bike" do
		it 'raises an error when there is no bike available' do
		expect {subject.release_bike}.to raise_error "No Bikes Available"
	end
  end 
end