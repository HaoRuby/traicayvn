class CreateSpreeStoreInfos < ActiveRecord::Migration
  def change
    create_table :spree_store_infos do |t|
      t.string :address
      t.string :phone
      t.text :description

      t.timestamps null: false
    end
  end
end
