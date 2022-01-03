class Group < ApplicationRecord
  belongs_to :user
  has_many :activities, through: :assignments

  validates :name, presence: true, length: {maximum: 50} 
end
