# Using UserCat name to avoid collisions

class UserCat < ActiveRecord::Base
  validates :name, presence: true, length: { in: 2..20 }

  belongs_to :user

  def interest(n)
    self.send("interest#{n}")
  end

  def attribute(n)
    self.send("attribute#{n}")
  end
end