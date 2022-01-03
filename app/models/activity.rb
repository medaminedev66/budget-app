class Activity < ApplicationRecord
  belongs_to :author
  has_many :groups, through: :assignments
end
