class Permission < ActiveRecord::Base
  belongs_to :user, :foreign_key => :created_by

  has_and_belongs_to_many :roles

  validates :label, presence: true,
                    uniqueness: true,
                    length: { maximum: 20 }

  validates_length_of :description, maximum: 50
end
