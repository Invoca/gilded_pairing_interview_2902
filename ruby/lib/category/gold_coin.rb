# lib/category/gold_coin.rb

=begin


- **Gold Coins**, being an hard asset, never have to be sold and they never
decrease in `price`
- The `price` of an item is never more than 50.

Except for **Gold Coins**. They are so valuable that their `price` is 80



=end

module Category
  module GoldCoin

    def category_name
      "GoldCoin"
    end

    # Updates the item's price and sell_by
    # based upon category rules
    def update
      @sell_by -= 1 # units: day

      @price += 1 unless @price >= 80
    end

  end
end
