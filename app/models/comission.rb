class Comission < ApplicationRecord

  COMISSION = 1

  def self.calculate(amount)
   (amount * COMISSION)/100
  end
end
