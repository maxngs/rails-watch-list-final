class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movie, through: :bookmarks, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
