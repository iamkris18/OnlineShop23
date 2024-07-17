module ApplicationHelper


    def current_order
        if session[:order_id].present?
          begin
            Order.find(session[:order_id])
          rescue ActiveRecord::RecordNotFound
            # Handle the case where the order with session[:order_id] doesn't exist
            # For example, reset the session[:order_id] to nil or create a new order
            session[:order_id] = nil
            Order.new
          end
        else
          Order.new
        end
      end
      

end
