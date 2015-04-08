class StartTrainingService < ArchServiceObject
  ENERGY_CHANGE = -10

  def self.body(user:, cat:, training_id:)
    cat_training = CatTraining.new(training:Training.find_by_id(training_id), cat: cat)
    ChangeUserGoldService.call!(user: user, gold_change: 0 - cat_training.cost)
    ChangeCatEnergyService.call!(cat: cat, energy_change: ENERGY_CHANGE)

    cat.increment!("attribute#{cat_training.attribute_id}")

    ServiceResponse.new(message: "Skill trained!", success: true)
  end
end