class AddAttachmentPictureToCocktails < ActiveRecord::Migration
  def self.up
    change_table :cocktails do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :cocktails, :picture
  end
end
