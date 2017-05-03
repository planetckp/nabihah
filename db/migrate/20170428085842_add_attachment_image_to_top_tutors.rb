class AddAttachmentImageToTopTutors < ActiveRecord::Migration
  def self.up
    change_table :top_tutors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :top_tutors, :image
  end
end
