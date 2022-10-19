# lib/category/normal.rb

=begin

- All items have a `sell_by` value which denotes the number of days we have left to sell the item before it expires

- All items have a `price` value which denotes how much the item costs

- At the end of each day our system adjusts both values for every item

Pretty simple, right? Well this is where it gets interesting:

- Once the sell by date has passed, `price` decreases twice as fast
- The `price` of an item is never negative


=end

module Category
  class Normal
    attr_accessor :name

    def initialize
      name = "Normal"
    end


    # Updates the item's price and sell_by
    # based upon category rules
    def update(sell_by, price)
      sell_by -= 1 # units: day

      price -= 1 if price > 0
      price -= 1 if price > 0 && sell_by <= 0

      return sell_by, price
    end

  end
end
