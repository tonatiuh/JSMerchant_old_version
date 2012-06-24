class Order < ActiveRecord::Base
  attr_accessible :customer_id, :status
end
