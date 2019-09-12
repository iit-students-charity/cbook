class ApplicationController < ActionController::Base
  private

  def id_from_params
    params.permit(:id)[:id]
  end
end
