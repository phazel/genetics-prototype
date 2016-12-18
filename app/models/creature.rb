class Creature < ApplicationRecord
  validates :name, presence: true

  before_save :default_values

  def default_values
    if rand > 0.5
      self.shape ||= 'square'
    else
      self.shape ||= 'circle'
    end
  end
end
