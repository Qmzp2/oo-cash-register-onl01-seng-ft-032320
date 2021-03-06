
class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  
  def add_item(item, price, quantity=1)
    self.total += price*quantity
    quantity.times do
      @items << item
    end
    self.last_transaction = price*quantity
  end
  
  def apply_discount
    if discount > 0 && total
      self.total = (self.total*(100-discount.to_f)/100).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      self.total
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
    @items.pop
  end
  
end
