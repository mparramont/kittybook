class RemoveSocialFromKitties < ActiveRecord::Migration[5.0]
  def change
    remove_column :kitties, :social, :boolean
  end
end
