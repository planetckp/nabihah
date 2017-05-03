class AddAttachmentImageToInstitutes < ActiveRecord::Migration
  def self.up
    change_table :institutes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :institutes, :image
  end
end
