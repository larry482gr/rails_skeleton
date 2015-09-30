class UserPassword < ActiveRecord::Base
  belongs_to :user
  # belongs_to :service
  belongs_to :password_question, :foreign_key => 'question_1'
  belongs_to :password_question, :foreign_key => 'question_2'
end
