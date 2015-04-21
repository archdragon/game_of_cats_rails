class CatTrainingPresenter < SimpleDelegator
  def translated_name
    I18n.t("trainings.#{name}")
  end
  def translated_description
    I18n.t("trainings.#{name}_description")
  end
end