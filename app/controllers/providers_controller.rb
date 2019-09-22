class ProvidersController < ApplicationController
  before_action :provider, except: [:new, :create, :index]

  def index
    @providers = Provider.all
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
    provider = Provider.create(provider_attributes)
    redirect_to provider_path(id: provider.id)
  end

  def update
    provider.update(provider_attributes)
    redirect_to provider_path(provider)
  end

  def destroy
    provider.destroy
    redirect_to providers_path
  end

  private

  def provider_attributes
    params.require(:provider).permit(:name, :address, :phone_number)
  end

  def provider
    @provider ||= Provider.find(params[:id])
  end
end
