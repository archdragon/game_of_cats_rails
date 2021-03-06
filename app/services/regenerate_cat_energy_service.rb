class RegenerateCatEnergyService < ArchService::ServiceObject
  ENERGY_CHANGE = rand(30..60)

  def self.body(cat:)
    fail("Your cat can relax only once every 15 minutes!") if cat.busy?
    cat.update_attributes(last_action_at: Time.now)
    ChangeCatEnergyService.call!(cat: cat, energy_change: ENERGY_CHANGE)
  end
end