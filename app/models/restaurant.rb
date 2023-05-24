class Restaurant < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  has_many :reviews, dependent: :destroy

  # A restaurant must have a name, an address and a category.
  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

  VALID_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, presence: true, inclusion: { in: VALID_CATEGORIES, allow_nil: false }
end
