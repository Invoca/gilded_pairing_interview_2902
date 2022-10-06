# lib/item.rb

require_relative 'category'

class Item
  include Category

  attr_accessor :name,    # String
                :sell_by, # Integer
                :price,   # Integer aka PriceUnit
                :category # Symbol

  def initialize(name, sell_by, price, categpru)
    @name     = name
    @sell_by  = sell_by
    @price    = price
    @category = validate_category(category)

    include_category_rules
  end


  def include_category_rules
    parts = @category.to_s.split('_')

    parts.size.times do |x|
      parts[x][0] = parts[x][0].upcase
    end

    instance_eval("include Category::#{parts.join}")
  end


  def to_s
    "#{category}: #{@name}, #{@sell_by}, #{@price}"
  end
end
