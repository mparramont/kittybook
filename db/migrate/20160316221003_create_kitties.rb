class CreateKitties < ActiveRecord::Migration[5.0]
  def change
    create_table :kitties do |t|
      t.string :name
      t.date :birthday
      t.boolean :social

      t.timestamps
    end
  end
end
