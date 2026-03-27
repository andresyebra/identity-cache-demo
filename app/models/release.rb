class Release < ApplicationRecord
  include IdentityCache

  validates :name, presence: true

  scope :active, -> { where(active: true) }
  scope :featured, -> { where(featured: true) }
end
