
class CashRegister
  attr_accessor :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  
  def add_item(item, price, quantity=1)
    self.total += price*quantity
    @items << item
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
end
