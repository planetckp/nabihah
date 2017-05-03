class AddAttachmentImageToTutors < ActiveRecord::Migration
  def self.up
    change_table :tutors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tutors, :image
  end
end
