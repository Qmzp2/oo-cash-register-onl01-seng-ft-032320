
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
      self.total = (self.total*(1-discount.to_f)).to_i
    else
      self.total
    end
  end
end
