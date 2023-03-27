class CashRegister
    attr_accessor :discount
    attr_accessor :total
    attr_accessor :items
    attr_accessor :previous
    
    def initialize(discount = nil, total = 0)
        @discount = discount
        @total = total
        @items = []
    end
    def add_item(title, price, quantity = 1)
        @previous = price * quantity
        @total = total + (price * quantity)
        quantity.times {@items.push(title)}
    end 
    def apply_discount
        if self.discount != nil
            @total = self.total * (100 - self.discount) / 100
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply." 
        end        
    end
    def void_last_transaction
        if items.length > 0
            @total = total - previous
            @items.pop
        else
            @total = 0.0
        end        
    end                  
end 