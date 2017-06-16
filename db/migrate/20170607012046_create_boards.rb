class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
        t.string :title
        t.string :description
        t.integer :hosting_id
        t.references :category

        t.timestamps
    end
  end
end
