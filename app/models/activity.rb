class Activity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :groups, through: :assignments
  
  validates :name, presence: true, length: {maximum: 50}
  validates :amount,  numericality: { greater_than_or_equal_to: 0 }
end
