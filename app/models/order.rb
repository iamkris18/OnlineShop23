class Order < ApplicationRecord
    has_many :order_items
    before_save :set_subtotal

before_save :set_total
before_save :set_unit_price
    def subtotal
        order_items.collect{|order_item| order.items? ? order_item.unit_price*order_item.quantity : 0}.sum

    end


    private

    def set_sub_total
        self[:sub_total]=subtotal


    end
end
