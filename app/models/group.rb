class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :activities

  validates :name, presence: true, length: {maximum: 50} 
end
