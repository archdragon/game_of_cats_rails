class ArchPresenter
  def self.present(target_object)
    presenter_class_name = "#{target_object.class}Presenter"
    presenter_class_name.constantize.new(target_object)
  rescue NameError => e
    target_object
  end
end