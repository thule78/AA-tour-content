class Content < ApplicationRecord
  validates :title, presence: true
  validates :status, presence: true
  validates :source, presence: true
  validates :itinerary, presence: true
  validates :country, presence: true

  include PgSearch
  pg_search_scope :search_for_content,
    against: [ :title, :country, :destination, :activity, :source, :status, :length, :style, :provider, :code, :start_finish ],
    using: {
      tsearch: { prefix: true }
    }

  extend FriendlyId
  friendly_id :title, use: :slugged
end
