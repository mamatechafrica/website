class TeamMember < ApplicationRecord
  validates :name, presence: true
  validates :role, presence: true
  validates :bio, presence: true
  
  scope :recent, -> { order(created_at: :desc) }
end
