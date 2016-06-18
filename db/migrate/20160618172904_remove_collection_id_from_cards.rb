class RemoveCollectionIdFromCards < ActiveRecord::Migration
  def change
    remove_column :cards, :collection_id
  end
end
