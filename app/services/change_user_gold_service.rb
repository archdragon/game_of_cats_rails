class ChangeUserGoldService < ArchServiceObject
  def self.body(user:, gold_change:)
    new_amount = user.gold + gold_change
    raise ServiceError.new("You don't have enough gold!") if new_amount < 0

    user.update_attribute("gold", new_amount)
    ServiceResponse.new(message: "Gold changed!", success: true)
  end
end