class CreatePuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :puestions do |t|
      t.integer :title
      t.string :message
      t.string :puestion

      t.timestamps
    end
  end
end
