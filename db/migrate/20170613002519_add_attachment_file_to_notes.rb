class AddAttachmentFileToNotes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :notes do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :notes, :file
  end
end
