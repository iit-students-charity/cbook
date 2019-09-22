class PriceListsController < ApplicationController
  def index
    @provider = Provider.find(params[:provider_id])
    @price_lists = PriceList.where(provider: @provider)
    @price_lists = @price_lists.where(created_at: params[:date]) if params[:date]
    respond_to do |format|
      format.html { render 'index' }
      format.js { render partial: 'price_lists', price_lists: @price_lists }
    end
  end

  def create
    price_list = PriceList.create(price: params[:price], provider_id: params[:provider_id], ingredient_id: params[:ingredient_id])
  end

  private

  def price_list_attributes
    params.require(:price_list).permit(:price, :provider_id, :ingredient_id)
  end
end
