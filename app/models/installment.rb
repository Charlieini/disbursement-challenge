class Installment < ApplicationRecord
  belongs_to :disbursement
  belongs_to :order
end
