class CurrentUsersController < ApplicationController
  layout false
  respond_to :json

  def show
    @data = { current_user: { id: 1, gold: current_user.gold, cat_energy: current_user.current_cat.energy } }
    render json: @data
  end
end