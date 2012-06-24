module ProductsHelper
  def print_price(price)
    number_to_currency price
  end
  def print_stock(stock)
    if stock > 0
      return "<span class='low_stock'>Insufficient Stock (#{stock})</span>"
    else
      return "<span class='out_stock'>Out of Stock</span>"
    end
  end
end
