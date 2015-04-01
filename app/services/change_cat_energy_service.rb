class ChangeCatEnergyService < ArchServiceObject
  def self.body(cat:, energy_change:)
    new_amount = cat.energy + energy_change
    raise ServiceError.new("Not enough energy!") if new_amount < 0

    new_amount = 100 if new_amount > 100

    cat.update_attributes!(energy: new_amount)
    ServiceResponse.new(message: "Cat energy changed!", success: true)
  end
end