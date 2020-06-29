class CashRegister
   attr_accessor :total, :discount, :items, :transaction
   
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.transaction = [title, price, quantity]
    self.total += price * quantity
    quantity.times do
      self.items.push(title)
    end
  end

def apply_discount
  if self.discount != nil
    self.total = self.total*(100-self.discount)/100
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  quantity = self.transaction[2]
  quantity.times do
    self.items.pop
    
  end
  self.total -= transation[1] * transaction[2]
end

end