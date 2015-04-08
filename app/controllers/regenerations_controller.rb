class RegenerationsController < ApplicationController
  layout "logged_in"

  def index
    @regenerations = Regeneration.all
  end

  def start
    response = RegenerateCatEnergyService.call(cat: current_cat)
    redirect_to regenerations_path, flash: response.flash
  end
end