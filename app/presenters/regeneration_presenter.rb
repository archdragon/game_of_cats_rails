class RegenerationPresenter < SimpleDelegator
  def translated_name
    I18n.t("regenerations.#{name}")
  end
end