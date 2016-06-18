class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :collection_id
      t.integer :card_id

      t.timestamps null: false
    end
  end
end
