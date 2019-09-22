class PriceListsController < ApplicationController
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
