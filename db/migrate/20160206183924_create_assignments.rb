class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :rollno

      t.timestamps
    end
  end
end
