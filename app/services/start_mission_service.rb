class StartMissionService < ArchServiceObject
  ENERGY_CHANGE = -10

  def self.body(user:, cat:, mission_id:)
    mission = Mission.find(mission_id)
    ChangeCatEnergyService.call!(cat: cat, energy_change: ENERGY_CHANGE)
    CheckCatAttributesService.call!(cat: cat, required_attributes: mission.required_attributes)
    ChangeUserGoldService.call!(user: user, gold_change: mission.awarded_gold)
    ServiceResponse.new(message: "Mission accomplished!", success: true)
  end
end