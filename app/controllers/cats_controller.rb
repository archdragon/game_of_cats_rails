class CatsController < ApplicationController
  def index
    @cats = current_user.cats
  end
  def show
  end
end