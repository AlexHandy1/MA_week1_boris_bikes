require 'DockingStation'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
	it { is_expected.to respond_to(:dock).with(1).argument}

	it 'can dock a bike' do
		expect(subject.dock double :bike).to be nil
	end

	describe "release_bike" do
		it 'raises an error when there is no bike available' do
		expect {subject.release_bike}.to raise_error "No bikes available"
	end
	it 'raises an error when full' do 
		20.times { subject.dock double :bike }
		expect {subject.dock double :bike}.to raise_error "Station Full"
	end
  end 
end