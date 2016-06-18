class RenameCollectionIdOnOwnership < ActiveRecord::Migration
  def change
    rename_column :ownerships, :collection_id, :card_collection_id
  end
end
