class PriceListsController < ApplicationController
  def index
    @provider = Provider.find(params.permit(:provider_id)[:provider_id])
    @price_lists = PriceList.where(provider: @provider)
    if params.permit(:date)[:date]
      @price_lists = @price_lists.where(date: date)
    end
    respond_to do |format|
      format.js { render partial: 'price_lists', price_lists: @price_lists }
    end
  end

  def new
    @provider_id = params.permit(:provider_id)[:provider_id]
    @ingredient_id = params.permit(:ingredient_id)[:ingredient_id]
  end

  def create
    price_list = PriceList.create(price_list_attributes)
    redirect_to edit_provider_path(price_list.provider)
  end

  private

  def price_list_attributes
    params.require(:price_list).permit(:price, :provider_id, :ingredient_id)
  end
end
