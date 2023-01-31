class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :voteable, polymorphic: true

  validates :value, inclusion: { in: [-1, 1] }
end
