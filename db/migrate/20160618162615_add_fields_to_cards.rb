class AddFieldsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :collection_id, :integer
    add_column :cards, :name, :string
    add_column :cards, :set, :string
    add_column :cards, :image, :string
    add_column :cards, :rarity, :string
    add_column :cards, :card_uid, :string
    add_column :cards, :set_code, :string
    add_column :cards, :number, :string
  end
end
