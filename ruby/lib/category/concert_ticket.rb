# lib/category/concert_ticket.rb

=begin

- **Concert Tickets** increase in `price` the closer `sell_by` gets to zero:
  - `price` increases by 2 when there are 10 days or less and by 3 when there are 5 days or less
  - `price` drops to 0 after the concert

  The max_price requirement was hidden in the text for the
  gold_coin category.

=end

module Category
  class ConcertTicket
    attr_accessor :name

    def initialize
      name = "ConcertTicket"
    end

    # Updates the item's price and sell_by
    # based upon category rules
    def update(sell_by, price)
      sell_by -= 1 # units: day

      if sell_by <= 0
        price = 0
      else
        price += 1 if price < 50
        price += 1 if price < 50 && sell_by <= 10
        price += 1 if price < 50 && sell_by <= 5
      end

      return sell_by, price
    end

  end
end
