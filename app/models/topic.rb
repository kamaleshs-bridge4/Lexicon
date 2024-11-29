class Topic < ApplicationRecord
  validates :name, presence: true
  validates :lexicon, presence: true
end
