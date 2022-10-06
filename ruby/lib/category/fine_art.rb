# lib/category/find_art.rb

=begin

- **Fine Art** actually increases in `price` the older it gets
  - And, similar to normal items, **Fine Art** increases in `price` twice
  as fast once the sell by date has passed

  The max_price of 50 requirement was hidden in the the
  requirements text for the gold_coin category.

=end

module Category
  class FineArt
    attr_accessor :name

    def initialize
      name = "FineArt"
    end

    # Updates the item's price and sell_by
    # based upon category rules
    def update(sell_by, price)
      sell_by -= 1 # units: day

      price += 1 if price < 50
      price += 1 if price < 50 && sell_by <= 0

      return sell_by, price
    end


  end
end
