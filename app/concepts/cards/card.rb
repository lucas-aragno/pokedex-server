class Card < ActiveRecord::Base
  has_and_belongs_to_many :ownerships
  # TODO: move this to reform
  validates :name, :image, :set, :card_uid, presence: true
  validates :name, :image, :card_uid, uniqueness: true
end
