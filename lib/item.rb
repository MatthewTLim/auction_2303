class Item

  attr_reader :name, :bids

  def initialize(name)
    @name = name
    @bids = {}
  end

  def add_bid(attendee, value)
    @bids[attendee] = value
  end

  def current_high_bid
    @bids.values.last
  end
end