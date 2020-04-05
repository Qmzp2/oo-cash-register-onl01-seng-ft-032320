
class CashRegister
  attr_accessor :discount, :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    
  end
  
  def add_item(item, price, quantity=1)
    self.total += price*quantity
  end
  
  def apply_discount
    if discount > 0 && total
      self.total = (self.total*(100-discount.to_f)/100).to_i
      self.total
    else
      self.total
    end
  end
end
