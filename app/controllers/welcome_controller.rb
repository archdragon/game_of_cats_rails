class WelcomeController < ApplicationController
  def index
    redirect_to city_path if user_signed_in?
  end
end
