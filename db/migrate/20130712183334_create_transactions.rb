class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :owner
      t.references :writer

      t.timestamps
    end
    add_index :transactions, :owner_id
    add_index :transactions, :writer_id
  end
end
