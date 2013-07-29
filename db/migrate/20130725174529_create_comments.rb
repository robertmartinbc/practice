class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :assignments

      t.timestamps
    end
    add_index :comments, :assignments_id
  end
end
