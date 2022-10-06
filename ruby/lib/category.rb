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
    raise InvalidCategory unless CATEGORIES.include a_symbol

    @category = a_symbol.constantize
  end
end
