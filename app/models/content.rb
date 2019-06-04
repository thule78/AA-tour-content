class Content < ApplicationRecord
  validates :title, presence: true
  validates :status, presence: true
  validates :source, presence: true
  validates :content_original, presence: true
  validates :country, presence: true
end
