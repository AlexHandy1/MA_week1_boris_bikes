require 'Bike'

describe Bike do 
	it {is_expected.to respond_to :working?}
	it {is_expected.to respond_to :broken?}

	it 'can report bike as broken' do
		subject.report_broken
		expect(subject.works).to eq false
	end
end