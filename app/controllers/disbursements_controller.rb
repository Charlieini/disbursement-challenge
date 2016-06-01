class DisbursementsController < ApplicationController
  before_action :set_merchant, only: [:show, :index]


  def index
  end

  def show
    @disbursement = Disbursement.find(params[:id])
    @total = @disbursement.installments.sum(:amount).to_f
  end

  private

    def set_merchant
      @merchant = Merchant.find(params[:merchant_id])
    end
end
