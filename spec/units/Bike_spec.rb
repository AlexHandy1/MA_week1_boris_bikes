require 'Bike'

describe 'Bike' do
	it 'is a new bike' do
		new_bike = Bike.new 
		expect(new_bike).to be_a Bike
	end
end