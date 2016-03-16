class AddOwnerIdToKitties < ActiveRecord::Migration[5.0]
  def change
    add_column :kitties, :owner_id, :integer
  end
end
