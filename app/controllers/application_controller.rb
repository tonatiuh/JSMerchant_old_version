class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def load_order
    begin 
      @order = Order.find_or_initialize_by_id(session[:order_id], :status => "unsubmitted")
      if @order.new_record?
        @order.save!
        session[:order_id] = @order.id
      end
    end
  end

end
