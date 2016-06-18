class AddCardIdToOwnership < ActiveRecord::Migration
  def change
    add_column :ownerships, :card_id, :integer
  end
end
