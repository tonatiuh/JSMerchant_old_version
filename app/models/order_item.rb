class OrderItem < ActiveRecord::Base
  attr_accessible :product_id, :order_id, :quantity
  validates_presence_of :order_id, :product_id
  belongs_to :order
  belongs_to :product

  def subtotal
    self.product.price * self.quantity
  end

end
