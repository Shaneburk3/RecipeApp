class Recipe < ApplicationRecord
    # Test user input
    validates :name, presence: true, length: { maximum: 50 }
    validates :ingredients, presence: true, length: { maximum: 500 }
    validates :instructions, presence: true, length: { maximum: 1000 }
    validates :difficulty, presence: true, length: { maximum: 20 }
end
