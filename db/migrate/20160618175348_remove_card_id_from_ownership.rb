class RemoveCardIdFromOwnership < ActiveRecord::Migration
  def change
    remove_column :ownerships, :card_id
  end
end
