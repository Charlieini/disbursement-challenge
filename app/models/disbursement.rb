class Disbursement < ApplicationRecord
  belongs_to :merchant
  has_many :installments

  def self.set(merchant_id)

    disbursement = Disbursement.where("created_at >= ? AND merchant_id = ?", Time.zone.now.beginning_of_day, merchant_id)

    disbursement.length == 0 ? Disbursement.create(merchant_id: merchant_id).id : disbursement[0].id
  end

end
