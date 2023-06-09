class Restaurant < ApplicationRecord
  CATEGORIES = %w[italian japanese french belgian chinese].freeze
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
