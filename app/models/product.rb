class Product < ActiveRecord::Base
  attr_accessible :title, :price, :description, :image_url
  def price=(input)
    input.delete!("$")
    super
  end
end
