class CatMission < Delegator
  def initialize(cat:, mission:)
    @cat = cat
    @mission = mission
  end

  def __getobj__
    @mission
  end

  def __setobj__(obj)
    @mission = obj
  end
end