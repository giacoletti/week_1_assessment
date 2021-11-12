require './car.rb'

describe Car do

    let(:driver) { instance_double('Driver', name: 'Giovanni')}

    subject { described_class.new }

    it 'is expected to change :color attribute using paint method' do
        subject.color = 'blue'
        expect(subject.paint('orange')).to eq subject.color
    end

    it 'is expected to have a driver' do
        expect(driver).to be instance_of?
    end

end