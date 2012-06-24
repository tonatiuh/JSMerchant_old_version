class OrderItem < ActiveRecord::Base
  attr_accessible :product_id, :order_id, :quantity
end
