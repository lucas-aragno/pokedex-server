class CreateCardCollections < ActiveRecord::Migration
  def change
    create_table :card_collections do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
