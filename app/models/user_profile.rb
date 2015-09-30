class UserProfile < ActiveRecord::Base
  belongs_to :user, touch: true

  serialize :addresses, JSON
end
