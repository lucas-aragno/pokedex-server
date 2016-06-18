class CardCollection < ActiveRecord::Base
  has_many :ownerships
  belongs_to :user

  validates :user_id, presence: true
end
