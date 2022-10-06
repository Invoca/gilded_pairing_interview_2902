# lib/category.rb


module Category
  class InvalidCategory < RuntimeError; end

  CATEGORIES  = %i[
                  concert_ticket
                  fine_art
                  gold_coin
                  normal
                ]

  def validate_category(a_symbol)

    debug_me{[
      :a_symbol,
      'CATEGORIES',
      'CATEGORIES.first.class'
    ]}

    raise(InvalidCategory, "a_symbol") unless CATEGORIES.include?(a_symbol)

    @category = a_symbol
  end
end
