class Activity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups

  validates :name, presence: true, length: { maximum: 50 }
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
