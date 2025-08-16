class JobBoard < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :company, presence: true
  
  scope :recent, -> { order(created_at: :desc) }
end
