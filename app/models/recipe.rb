class Recipe < ApplicationRecord
    # Test user input
    validates :name, presence: true, length: { maximum: 50 }
    validates :ingredients, presence: true, length: { maximum: 500 }
    validates :instructions, presence: true, length: { maximum: 1000 }
    validates :difficulty, presence: true, inclusion: { in: [ "Easy", "easy", "Medium", "medium", "Hard", "hard" ] }, message: "Difficulty should be either Easy, Medium, or Hard.", length: { maximum: 20 }
end
