class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_locale
  protect_from_forgery with: :exception

  def current_cat
    current_user.current_cat
  end

  private

  def set_locale
    I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
  end
end
