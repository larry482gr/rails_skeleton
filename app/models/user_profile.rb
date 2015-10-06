class UserProfile < ActiveRecord::Base
  belongs_to :user, touch: true

  validates :gender, presence: true, length: { maximum: 1 }
  validates :mobile, presence: true, length: { minimum: 8, maximum: 20 }
end
