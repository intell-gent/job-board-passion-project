class CreateSubscriptions < ActiveRecord::Migration
  def change
      create_table :subscriptions do |t|
        t.integer :user_id,  :null => false
        t.integer :board_id, :null => false

        t.timestamps
      end

      add_index :subscriptions, [:user_id, :board_id], :unique => true
      add_index :subscriptions, :board_id

  end
end
