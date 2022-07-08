class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :view_counts, dependent: :destroy

end
