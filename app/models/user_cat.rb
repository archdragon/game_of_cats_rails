# Using UserCat name to avoid collisions

class UserCat < ActiveRecord::Base
  validates :name, presence: true, length: { in: 2..20 }

  belongs_to :user
end