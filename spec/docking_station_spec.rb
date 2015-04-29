require 'DockingStation'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
	it { is_expected.to respond_to(:dock).with(1).argument}

	describe "release_bike" do
		it 'raises an error when there is no bike available' do
		expect {subject.release_bike}.to raise_error "No bikes available"
	end
  end 
end