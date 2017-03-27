class AddAttachmentLogoToSpreeStoreInfos < ActiveRecord::Migration
  def self.up
    change_table :spree_store_infos do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :spree_store_infos, :logo
  end
end
