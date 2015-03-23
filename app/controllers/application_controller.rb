class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def present(target_object)
    presenter_class_name = "#{target_object.class}Presenter"
    presenter_class_name.constantize.new(target_object)
  rescue NameError => e
    target_object
  end

  def current_cat
    current_user.user_cats.first
  end
end
