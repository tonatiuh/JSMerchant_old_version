class OrderItem < ActiveRecord::Base
  attr_accessible :product_id, :order_id, :quantity
  validates_presence_of :order_id, :product_id
  belongs_to :order
  belongs_to :product
  validates_numericality_of :quantity, :only_integer => true, :greater_than => 0

  def subtotal
    self.product.price * self.quantity
  end

end
