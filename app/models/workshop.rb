class Workshop < ApplicationRecord
  has_many :user_workshops
  has_many :posts, through: :user_workshops

  def joined?(user)
    UserWorkshop.where(user_id: user.id, workshop_id: self.id).exists?
  end
end
