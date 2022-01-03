class Group < ApplicationRecord
  belongs_to :user
  has_many :activities, through: :assignments
end
