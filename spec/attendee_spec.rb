require './lib/item'
require './lib/auction'
require './lib/attendee'

describe "exists" do
  it "exists" do
    attendee = Attendee.new({name: 'Megan', budget: '$50'})

    expect(attendee).to be_an(Attendee)
  end

  it "has readable attributes" do
    attendee = Attendee.new({name: 'Megan', budget: '$50'})

    expect(attendee.name).to eq("Megan")
    expect(attendee.budget).to eq(50)
  end
end