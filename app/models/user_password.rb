class UserPassword < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  belongs_to :password_question
end
