class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
        t.string :title
        t.string :position
        t.string :description
        t.references :board

        t.timestamps
    end
  end
end
