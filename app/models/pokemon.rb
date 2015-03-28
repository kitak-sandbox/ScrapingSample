class Pokemon < ActiveRecord::Base
  validates :number, presence: true
  validates :name, presence: true
  validates :height, presence: true
  validates :specific, presence: true
end
