class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :status, inclusion: { in: ['active', 'completed', 'on_hold'] }
  
  serialize :screenshots, Array
  serialize :technologies, Array
  
  scope :active, -> { where(status: 'active') }
  scope :completed, -> { where(status: 'completed') }
  scope :featured, -> { where(featured: true) }
end