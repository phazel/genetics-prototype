class Creature < ApplicationRecord
  validates :name, presence: true
  validates :text, presence: true
end
