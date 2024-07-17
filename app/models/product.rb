class Product < ApplicationRecord
    has_many :order_items

    def self.ransackable_associations(auth_object = nil)
        ["order_items"]
      end
      def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "price", "title", "updated_at"]
      end
    
end
