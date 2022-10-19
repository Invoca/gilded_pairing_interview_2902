# lib/category/gold_coin.rb

=begin


- **Gold Coins**, being an hard asset, never have to be sold and they never
decrease in `price`
- The `price` of an item is never more than 50.

Except for **Gold Coins**. They are so valuable that their `price` is 80



=end

module Category
  class GoldCoin
    attr_accessor :name

    def initialize
      name = "GoldCoin"
    end

    # Updates the item's price and sell_by
    # based upon category rules
    def update(sell_by, price)
      price += 1 unless price >= 80

      return sell_by, price
    end

  end
end
