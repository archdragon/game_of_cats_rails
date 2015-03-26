class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :name

  has_many :user_cats

  def email_required?
    false
  end

  def current_cat
    self.user_cats.first
  end
end
