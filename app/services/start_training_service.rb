class StartTrainingService
  ENERGY_COST = -10

  def self.call(user:, cat:, training_id:)
    ActiveRecord::Base.transaction do
      cat_training = CatTraining.new(training:Training.find_by_id(training_id), cat: cat)

      gold_status = ChangeUserGoldService.call(user: user, gold_change: 0 - cat_training.cost)
      energy_status = ChangeCatEnergyService.call(cat: cat, energy_change: ENERGY_COST)

      cat.increment!("attribute#{cat_training.attribute_id}")
      ServiceResponse.new(message: "Skill trained!", success: true)
    end
  rescue ServiceError => e
    ServiceResponse.new(message: e.message)
  end
end