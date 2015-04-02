# Using UserCat name to avoid collisions

class UserCat < ActiveRecord::Base
  validates :name, presence: true, length: { in: 2..20 }

  belongs_to :user

  ACTION_COOLDOWN_IN_SECONDS = 15*60
  MAX_ENERGY = 100

  def interest(n)
    self.send("interest#{n}")
  end

  def attribute(n)
    self.send("attribute#{n}")
  end

  def busy?
    last_action_time = last_action_at || Date.new(2000,1,1)
    (Time.now.to_i - last_action_time.to_time.to_i) < ACTION_COOLDOWN_IN_SECONDS
  end

  def max_energy
    MAX_ENERGY
  end
end