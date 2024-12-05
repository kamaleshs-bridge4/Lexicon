class Topic < ApplicationRecord
  validates :name, presence: true
  validates :lexicon, presence: true

  has_many :comments
end
