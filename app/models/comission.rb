class Comission < ApplicationRecord

  COMISSION = 1

  def self.calculate(amount)
    amount < 0 ? - amount/(100 - COMISSION) : (amount * COMISSION)/100
  end
end
