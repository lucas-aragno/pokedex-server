class Ownership < ActiveRecord::Base
  belongs_to :card_collection
  has_and_belongs_to_many :cards

  validates :card_collection_id, presence: true
end
