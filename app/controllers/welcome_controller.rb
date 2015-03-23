class WelcomeController < ApplicationController
  def index
    redirect_to user_cat_path(current_cat) if user_signed_in?
  end
end
