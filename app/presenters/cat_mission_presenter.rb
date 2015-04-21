class CatMissionPresenter < SimpleDelegator
  def translated_name
    I18n.t("missions.#{name}")
  end
end