class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :body
      t.string :state
      t.references :user

      t.timestamps
    end
    add_index :assignments, :user_id
  end
end
