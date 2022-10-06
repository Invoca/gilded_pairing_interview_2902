# lib/item.rb

require_relative 'category'

class Item
  include Category

  attr_accessor :name,    # String
                :sell_by, # Integer
                :price,   # Integer aka PriceUnit
                :category # Symbol

  def initialize(name, sell_by, price, category)
    @name     = name
    @sell_by  = sell_by
    @price    = price

    validate_category(category)

    include_category_rules
  end


  def include_category_rules
    parts = @category.to_s.split('_')

    parts.size.times do |x|
      parts[x][0] = parts[x][0].upcase
    end

    self.include Object.const_get("Category::#{parts.join}")
  end


  def to_s
    "#{category_name}: #{@name}, #{@sell_by}, #{@price}"
  end
end
