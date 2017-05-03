class AddAttachmentImageToPopularInstitutes < ActiveRecord::Migration
  def self.up
    change_table :popular_institutes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :popular_institutes, :image
  end
end
