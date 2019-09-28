class Category < ApplicationRecord
  has_many :questions, dependent: :destroy

  validates :name, :description, presence: true
end
