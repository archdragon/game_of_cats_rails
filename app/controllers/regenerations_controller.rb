class RegenerationsController < ApplicationController
  layout false
  respond_to :json

  def index
    @regenerations = Regeneration.all
    @regenerations.map! do |regeneration|
      ArchPresenter.present(regeneration)
    end
  end

  def start
    @response = RegenerateCatEnergyService.call(cat: current_cat)
    render json: @response
  end
end