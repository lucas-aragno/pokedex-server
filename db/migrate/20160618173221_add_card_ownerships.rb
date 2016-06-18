class AddCardOwnerships < ActiveRecord::Migration
  def change
    create_table :cards_ownerships do |t|
      t.integer :card_id
      t.integer :ownership_id
     end
  end
end
