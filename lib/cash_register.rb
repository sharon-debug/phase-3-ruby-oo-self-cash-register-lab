

class CashRegister
    attr_accessor :total, :discount ,:items, :dollars
     
def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items= Array.new

end

def add_item(title, price, quantity = 1)
     @items << {title: title, price: price, quantity: quantity}

    self.total += price * quantity 
    # quantity.times do
    #     @items << title
   # end
end

def apply_discount
    if @discount  > 0
        self_discount = self.total * @discount/100
         self.total = total - self_discount
         "After the discount, the total comes to $#{self.total}."
    else 
        "There is no discount to apply."
    end
end

def items
    name_array = Array.new
    @items.each do |item|
        item[:quantity].times {|| name_array << item[:title]}
    end
    name_array
end

def void_last_transaction

    @items.delete(-10)
    self.total -= (@items[-1][:price]).to_f * (@items[-1][:quantity]).to_f
    self.total
end


end
cash_register=CashRegister.new
 cash_register.total= 100
 cash_register_with_discount= CashRegister.new