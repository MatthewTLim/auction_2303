class Auction

  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    name_of_items = @items.map do |item|
      item.name
    end
  end

  def unpopular_items
    no_bids = []
    @items.each do |item|
      if item.bids == {}
        no_bids << item
      end
    end
    no_bids
  end

  def potential_revenue
    revenue = []
    @items.each do |item|
      revenue << item.bids.values.last
    end
    revenue.compact!.sum
  end

  def bidders
    names_of_bidders = []
    @items.each do |item|
      if item.bids != {}
        names_of_bidders << item.bids.keys
      end
    end
  names_of_bidders
  end


end