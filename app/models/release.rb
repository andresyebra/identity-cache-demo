class Release < ApplicationRecord
  include IdentityCache

  cache_index :genre
  cache_index :active
  cache_index :genre, :active

  validates :name, presence: true

  scope :active, -> { where(active: true) }
  scope :featured, -> { where(featured: true) }
end
