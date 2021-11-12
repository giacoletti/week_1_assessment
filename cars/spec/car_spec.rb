require "./car.rb"

describe Car do
  let(:driver) { instance_double("Driver", name: "Giovanni") }

  subject { described_class.new }

  it "is expected to change :color attribute using paint method" do
    subject.color = 'blue'
    expect { subject.paint('orange') }
      .to change { subject.color }.from('blue').to('orange')
  end

  it "is expected to have a driver with :name 'Giovanni'" do
    subject.driver = driver
    expect(subject.driver.name).to eq 'Giovanni'
  end
end
