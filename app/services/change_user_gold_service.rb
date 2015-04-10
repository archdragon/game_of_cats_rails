class ChangeUserGoldService < ArchService::ServiceObject
  def self.body(user:, gold_change:)
    new_amount = user.gold + gold_change
    fail("You don't have enough gold!") if new_amount < 0

    user.update_attribute("gold", new_amount)
    respond(message: "Gold changed!", success: true)
  end
end