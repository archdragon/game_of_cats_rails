module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def flash_class(class_name)
    case class_name
    when 'notice'
      'alert-info'
    else
      class_name
    end
  end

  def current_cat
    current_user.current_cat
  end
end
