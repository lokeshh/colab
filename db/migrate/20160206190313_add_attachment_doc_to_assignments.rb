class AddAttachmentDocToAssignments < ActiveRecord::Migration
  def self.up
    change_table :assignments do |t|
      t.attachment :doc
    end
  end

  def self.down
    drop_attached_file :assignments, :doc
  end
end
